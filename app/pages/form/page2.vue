<template>
	<view class="continer">
		<view class="wxtip" id="JweixinTip" :style="wxTipStyle" @click="clickWxTip">
			<span class="wxtip-icon"></span>
			<p class="wxtip-txt">当前是微信浏览器，需要点击右上角<br/>选择在浏览器中打开</p>
		</view>

		<view class="notice">
			<view class="title">
				备案告知
			</view>
			<view class="notice2">
				<view class="text">
					<!-- {{notice}} -->
					<view v-for="line in noticeList">
						{{line}}
					</view>
				</view>
			</view>
		</view>


		<view class="notice" style="margin-top: 30rpx;">
			<view class="title">
				模板下载 <span v-if="isWeiXin">（微信需要跳转到外部浏览器）</span>
			</view>
			<view class="notice2">
				<view class="flex-row">
					<view class="obj" v-if="!isWeiXin">
						<a target="_blank" :href="template1" style="margin-left: 10rpx;text-decoration: none;">①授权委托书</a>
					</view>
					<view class="obj" v-else @click.stop="ShowDown()">
						<a target="_blank" style="margin-left: 10rpx;text-decoration: none;">①授权委托书</a>
					</view>
					
					<view class="obj" style="margin-left: 20rpx;" v-if="!isWeiXin">
						<a target="_blank" :href="template2" style="margin-left: 10rpx;text-decoration: none;">②施工合同模板</a>
					</view>
					<view class="obj" style="margin-left: 20rpx;" v-else @click.stop="ShowDown()">
						<a target="_blank" style="margin-left: 10rpx;text-decoration: none;">②施工合同模板</a>
					</view>
				</view>
			</view>
		</view>

		<view class="btns">

			<view class="btn1" @click="pre">
				<text>上一页</text>
			</view>

			<view class="btn2" @click="next">
				<text v-if="resTime>0">{{resTime}}秒</text>
				<text v-else>下一页</text>
			</view>
		</view>
		<view class="end">
			{{ end }}
		</view>
	</view>
</template>

<script>
	import {
		getKey
	} from 'api'
	export default {
		data() {
			return {
				resTime: 5, //默认不显示下一页
				notice: "",
				wxTipStyle:"display:none;",
				noticeList: [],
				template1: "#",
				template2: "#",
				end: "",
				isWeiXin: false,
			};
		},

		async created() {
			let res1 = await this.$http.get(getKey + "notice", {})
			this.notice = res1.data?.value
			this.noticeList = this.notice.split("\n");

			let res2 = await this.$http.get(getKey + "template1", {})
			this.template1 = res2.data?.value

			let res3 = await this.$http.get(getKey + "template2", {})
			this.template2 = res3.data?.value

			let res4 = await this.$http.get(getKey + "end", {})
			this.end = res4.data.value
		},
		onShow() {
			let that = this;
			setInterval(() => {
				if (this.resTime > 0) {
					this.resTime -= 1
				}
			}, 1000);
			this.loadWx()
		},

		methods: {
			pre() {
				uni.navigateTo({
					url: "/pages/form/page1"
				})
			},
			next() {
				if (this.resTime <= 0) {
					uni.navigateTo({
						url: "/pages/form/page3"
					})
				} else {

				}
			},
			loadWx(){
				const ua = navigator.userAgent.toLowerCase()
				if (ua.match(/MicroMessenger/i) == 'micromessenger') {
					this.isWeiXin = true
				} else {
					this.isWeiXin = false
				}
			},
			ShowDown() {
				// console.log("this.isWeiXin", this.isWeiXin)
				// if (this.isWeiXin) {
					this.wxTipStyle = "display:block;";
				// }
			},
			clickWxTip(){
				this.wxTipStyle = "display:none;";
			}
		}
	}
</script>

<style lang="scss">
	page {
		background-image: url(@/static/page1/bg.png);
		background-size: cover;
	}

	.continer {
		width: 100%;
		padding: 50rpx 26rpx;
	}

	.btns {
		display: flex;
		justify-content: space-around;
		margin-top: 40rpx;

		.btn1 {
			border-radius: 6rpx;
			width: 200rpx;
			height: 70rpx;
			line-height: 70rpx;
			background: #0047ff;
			color: #0047ff;
			text-align: center;
			background: #FFFFFF;
			border: 1rpx solid #165DFF;

		}

		.btn2 {
			border-radius: 6rpx;
			width: 200rpx;
			height: 70rpx;
			text-align: center;
			line-height: 70rpx;
			color: #ffffff;
			background: #0051FF;
			border: 1rpx solid #165DFF;
		}
	}

	.end {
		position: fixed;
		bottom: 20rpx;
		width: 100%;
		height: 27rpx;
		font-weight: 400;
		font-size: 24rpx;
		color: rgba(61, 61, 61, 0.65);
		line-height: 27rpx;
		text-align: center;
		font-style: normal;
		text-transform: none;
	}

	.notice {
		width: 698rpx;
		background: linear-gradient(319deg, #6F9FFF 0%, #F0F5FF 100%);
		border-radius: 10rpx;
		border: 2rpx solid #FFFFFF;

		display: flex;
		justify-content: left;
		align-items: center;
		flex-direction: column;

		.title {
			width: 100%;
			text-align: left;
			font-weight: 500;
			margin-top: 16rpx;
			margin-left: 30rpx;
			font-size: 31rpx;
			color: #0051FF;
			font-style: normal;
			text-transform: none;
		}

		.notice2 {
			margin-top: 10rpx;
			width: 667rpx;
			background: #FFFFFF;
			border-radius: 15rpx 15rpx 15rpx 15rpx;
			padding: 23rpx 23rpx;

			.text {
				text-indent: 2em;
				width: 621rpx;
				min-height: 577rpx;
				font-weight: 400;
				font-size: 27rpx;
				color: rgba(61, 61, 61, 0.85);
				line-height: 46rpx;
				text-align: left;
				font-style: normal;
				text-transform: none;
			}

			margin-bottom: 24rpx;
		}

		.flex-row {
			display: flex;
			justify-content: space-between;

			.obj {
				width: 324rpx;
				height: 194rpx;
				background: #F4F7FF;
				box-shadow: inset 0rpx 4 15rpx 0rpx #FFFFFF;
				border-radius: 15rpx 15rpx 15rpx 15rpx;
				text-align: left;
				padding-left: 20rpx;
				line-height: 194rpx;
			}
		}
	}
	
			.wxtip{background: rgba(0,0,0,0.6); text-align: center; position: fixed; left:0; top: 0; width: 100%; height: 100%; z-index: 998; display: none;}
			.wxtip-icon{width: 52px; height: 67px; background: url(http://caibaojian.com/d/uploads/2016/01/weixin-tip.png) no-repeat; display: block; position: absolute; right: 30px; top: 20px;}
			.wxtip-txt{padding-top: 107px; color: #fff; font-size: 16px; line-height: 1.5;}
</style>