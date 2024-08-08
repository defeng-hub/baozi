<template>
	<view class="continer">
		<view class="notice">
			<view class="title">
				黑名单企业（因违规施工行政处罚较多不予备案）
			</view>
			<view class="notice2">
				<view class="text">
					<view v-for="line in heimingdanqiyeList">
						{{line}}
					</view>
					<!-- {{heimingdanqiye}} -->
				</view>
			</view>
		</view>
		
		
		<view class="notice" style="margin-top: 30rpx;">
			<view class="title">
				灰名单企业（因违规施工有过1次行政处罚或多次施工未备案的企业，请谨慎使用）
			</view>
			<view class="notice2">
				<view class="text">
					<view v-for="line in huimingdanqiyeList">
						{{line}}
					</view>
					<!-- {{huimingdanqiye}} -->
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
				heimingdanqiye: "",
				heimingdanqiyeList: [],
				huimingdanqiye: "",
				huimingdanqiyeList: [],
				end:"",
			};
		},
		async created() {
			let res1 =  await this.$http.get(getKey+"heimingdanqiye", {})
			this.heimingdanqiye = res1.data?.value
			this.heimingdanqiyeList = this.heimingdanqiye.split("\n");
			
			let res2 =  await this.$http.get(getKey+"huimingdanqiye", {})
			this.huimingdanqiye = res2.data?.value
			this.huimingdanqiyeList = this.huimingdanqiye.split("\n");
			
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
					url:"/pages/form/page2"
				})
			},
			next(){
				if(this.resTime <= 0){
					uni.navigateTo({
						url:"/pages/form/index"
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
		width: 650rpx;
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
		min-height: 300rpx;
		
		.text{
			width: 621rpx;
			font-size: 28rpx;
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
