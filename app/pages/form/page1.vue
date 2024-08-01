<template>
	<view class="continer" @touchmove.stop.prevent="() => {}">
		<view class="title">
			<view class="title1">{{ title1 }}</view>
			<view class="title2">{{ title2 }}</view>
		</view>
		
		<view class="center">
			<image src="@/static/page1/logo3.png" mode="" class="logo"></image>
		</view>
		<view class="bottom">
			<view class="btns">
				<view class="btn1" @click="next">施工备案提交</view>
				<view class="btn2" @click="query">施工备案查询</view>
				<view class="info">
					{{ end }}
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	import { getKey } from 'api'
	export default {
		data() {
			return {
				title1:"",
				title2:"",
				end:""
			};
		},
		async created() {
			let res1 =  await this.$http.get(getKey+"title1", {})
			this.title1 = res1.data.value
			
			let res2 =  await this.$http.get(getKey+"title2", {})
			this.title2 = res2.data.value
			
			let res3 =  await this.$http.get(getKey+"end", {})
			this.end = res3.data.value
			// console.log(this.title1,this.title2)
		},
		methods:{
			next(){
				console.log("next")
				uni.navigateTo({url:"/pages/form/page2"})
			},
			query(){
				console.log("query")
			}
		}
	}
</script>

<style lang="scss">
.continer{
	z-index: 1;
	position: fixed;
	height: 100%;
	width: 100%;
	.bottom{
		position: fixed;
		bottom: 50rpx;
		z-index: 100;
		.info{
			margin-top: 20rpx;
			font-weight: 400;
			font-size: 24rpx;
			color: #888888;
			line-height: 34rpx;
			text-align: left;
			font-style: normal;
		}
		.btns{
			padding: 20rpx 70rpx ;
			.btn1{
				width: 600rpx;
				height: 92rpx;
				background: #0047ff;
				border-radius: 40rpx;
				color: #ffffff;
				text-align: center;
				line-height: 92rpx;
			}
			.btn2{
				margin-top: 40rpx;
				width: 600rpx;
				height: 92rpx;
				background: #0047ff;
				border-radius: 40rpx;
				color: #0047ff;
				text-align: center;
				line-height: 92rpx;
				
				background: #FFFFFF;
				border: 2rpx solid #0047ff;
			}
		}
	}
	.center{
		position: absolute;
		position: relative;
		display: flex;
		justify-content: center;
		align-items: center;
		flex-direction:column;
		.logo{
			top: 300rpx;
			position: absolute;
			margin-top: 160rpx;
			width: 500rpx;
			height: 500rpx;
		}
	}
	.title{
		position: absolute;
		.title1{
			position: absolute;
			top: 250rpx;
			text-align: center;
			height: 85rpx;
			font-weight: 700;
			font-size: 56rpx;
			color: #FFFFFF;
			line-height: 85rpx;
			letter-spacing: 4px;
			font-style: normal;
			text-transform: none;
			width: 100vw;
		}
		.title2{
			position: absolute;
			text-align: center;
			top: 330rpx;
			height: 56rpx;
			font-weight: 700;
			font-size: 40rpx;
			color: #FFFFFF;
			line-height: 56rpx;
			letter-spacing: 2px;
			font-style: normal;
			text-transform: none;
			width: 100vw;
		}
	}
}
page{
	background-image: url(@/static/page1/bg.png);
	background-size: cover;
}
</style>
