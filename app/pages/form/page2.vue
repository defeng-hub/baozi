<template>
	<view class="continer">
		<view class="notice">
			<view class="title">
				备案告知
			</view>
			<view class="notice2">
				<view class="text">
					{{notice}}
				</view>
			</view>
		</view>
		
		
		<view class="notice" style="margin-top: 30rpx;">
			<view class="title">
				模板下载
			</view>
			<view class="notice2">
				<view class="flex-row">
					<view class="obj">
						<a target="_blank" :href="template1" style="margin-left: 10rpx;text-decoration: none;">①授权委托书</a>
					</view>
					<view class="obj" style="margin-left: 20rpx;">
						<a target="_blank" :href="template2" style="margin-left: 10rpx;text-decoration: none;">②施工合同模板</a>
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
	import { getKey } from 'api'
	export default {
		data() {
			return {
				resTime:5, //默认不显示下一页
				notice: "",
				template1: "",
				template2: "",
				end:"",
			};
		},
		async created() {
			let res1 =  await this.$http.get(getKey+"notice", {})
			this.notice = res1.data?.value
			
			let res2 =  await this.$http.get(getKey+"template1", {})
			this.template1 = res2.data?.value
			
			let res3 =  await this.$http.get(getKey+"template2", {})
			this.template2 = res3.data?.value
			
			let res4 =  await this.$http.get(getKey+"end", {})
			this.end = res4.data.value
		},
		onShow() {
			let that = this;
			setInterval(() => {
				if (this.resTime > 0){
					this.resTime -= 1
				}
			}, 1000);
		},
		methods:{
			pre(){
				uni.navigateTo({
					url:"/pages/form/page1"
				})
			},
			next(){
				if(this.resTime <= 0){
					uni.navigateTo({
						url:"/pages/form/page3"
					})
				}else{

				}
			}
		}
	}
</script>

<style lang="scss">
page{
	background-image: url(@/static/page1/bg.png);
	background-size: cover;
}
.continer{
	width: 100%;
	padding: 50rpx 26rpx;
}
.btns{
	display: flex;
	justify-content: space-around;
	margin-top: 40rpx;
	.btn1{
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
	
	.btn2{
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
.end{
	position: fixed;
	bottom: 20rpx;
	width: 100%;
	height: 27rpx;
	font-weight: 400;
	font-size: 24rpx;
	color: rgba(61,61,61,0.65);
	line-height: 27rpx;
	text-align: center;
	font-style: normal;
	text-transform: none;
}
.notice{
	width: 698rpx;
	background: linear-gradient( 319deg, #6F9FFF 0%, #F0F5FF 100%);
	border-radius: 10rpx;
	border: 2rpx solid #FFFFFF;
	
	display: flex;
	justify-content: left;
	align-items: center;
	flex-direction:column;
	.title{
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
	.notice2{
		margin-top: 10rpx;
		width: 667rpx;
		background: #FFFFFF;
		border-radius: 15rpx 15rpx 15rpx 15rpx;
		padding: 23rpx 23rpx;
		.text{
			width: 621rpx;
			min-height: 577rpx;
			font-weight: 400;
			font-size: 27rpx;
			color: rgba(61,61,61,0.85);
			line-height: 46rpx;
			text-align: left;
			font-style: normal;
			text-transform: none;
		}
		margin-bottom: 24rpx;
	}
	
	.flex-row{
		display: flex;
		justify-content: space-between;
		.obj{
			width: 324rpx;
			height: 194rpx;
			background: #F4F7FF;
			box-shadow: inset 0rpx 4 15rpx 0rpx #FFFFFF;
			border-radius: 15rpx 15rpx 15rpx 15rpx;
		}
	}
}
</style>
