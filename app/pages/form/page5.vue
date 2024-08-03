<template>
	<view class="continer">
		<view class="notice">
			<view class="title">
				信息已提交
			</view>
			<view class="notice2">
				<view class="text" style="min-height: 30vh;">
					{{beiantongguotishi}}
				</view>
			</view>
		</view>
		
		<view class="btns">
			<view class="btn2" @click="next">
				<text>完成</text>
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
				beiantongguotishi: "",
				end:"",
			};
		},
		async created() {
			let res1 =  await this.$http.get(getKey+"beiantongguotishi", {})
			this.beiantongguotishi = res1.data?.value
			
			let res4 =  await this.$http.get(getKey+"end", {})
			this.end = res4.data.value
		},
		onShow() {

		},
		methods:{
			pre(){
				uni.navigateTo({
					url:"/pages/form/page4"
				})
			},
			next(){
				uni.navigateTo({
					url:"/pages/form/page1"
				})
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
		border-radius: 20rpx;
		width: 200rpx;
		height: 60rpx;
		line-height: 60rpx;
		background: #0047ff;
		color: #0047ff;
		text-align: center;
		background: #FFFFFF;
		border: 1rpx solid #165DFF;
		
	}
	
	.btn2{
		border-radius: 20rpx;
		width: 200rpx;
		height: 60rpx;
		text-align: center;
		line-height: 60rpx;
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
	border-radius: 10rpx 10rpx 10rpx 10rpx;
	border: 2rpx solid #FFFFFF;
	
	display: flex;
	justify-content: left;
	align-items: center;
	flex-direction:column;
	.title{
		width: 100%;
		text-align: center;
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
			font-size: 30rpx;
			text-indent:2em;
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
