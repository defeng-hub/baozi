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
				<view class="btn1" @click="query">施工台账查询</view>
				<view class="btn2" @click="check">执法检查</view>
				<view class="info">
					{{ end }}
				</view>
			</view>
		</view>
		
		<u-popup :show="show" closeable closeOnClickOverlay @close="close" >
			<view class="popup">
				<u--form style="width: 670rpx;" labelPosition="left" :model="model1" :rules="rules" ref="uForm">
					<u-form-item :labelWidth="200" label="账号：" prop="username" borderBottom>
						<u--input :maxlength="11" v-model="model1.username" placeholder="手机号必填" border="none"></u--input>
					</u-form-item>
					<u-form-item :labelWidth="200" label="密码：" prop="passwd" borderBottom>
						<u--input v-model="model1.passwd" placeholder="请输入密码"  border="none"></u--input>
					</u-form-item>
					<view class="btn3" @click="login()">登陆</view>
				</u--form>
			</view>
		</u-popup>
	</view>
</template>

<script>
	import { getKey,loginApi } from 'api'
	export default {
		data() {
			return {
				model1:{
					username:"",
					passwd:"",
				},
				rules: {
					'username':{
						type: 'string',
						required: true,
						message: '手机号不符合要求',
						trigger: ['blur', 'change']
					},
					'passwd': {
						type: 'string',
						required: true,
						message: '密码不符合要求',
						trigger: ['blur', 'change']
					}
				},
				title1:"",
				title2:"",
				end:"",
				show: false, //弹出层
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
			check(){
				this.show = true;
				console.log("next")
			},
			query(){
				console.log("query")
				this.show = true;
			},
			async login(){
				this.$refs.uForm.validate().then(async (refRes) => {
					console.log(this.model1)
					this.$http.post(loginApi, this.model1, {}).then(res => {
						// console.log(res)
						if (res.code != 200){
							uni.showToast({
								icon:"none",
								title:"登录失败"
							})
						}else{
							if(res.data.status == false){
								uni.showToast({
									icon:"none",
									title:res.data.msg
								})
								return 
							}else{
								uni.setStorageSync("Mt8p3QiZ", res.data.user)
								uni.navigateTo({
									url:"/pages/admin/check2"
								})
							}
						}

					})
					
				}).catch(errors => {
					
				})

			},
			close(){
				this.show = false;
			}
		}
	}
</script>

<style lang="scss">
.popup{
	min-height: 500rpx;
	margin-top: 20rpx;
	padding: 40rpx 32rpx;
	width: 94.7vw;
	background: #FFFFFF;
	border-radius: 8rpx;
	.btn3{
		margin-top: 50rpx;
		margin-left: 120rpx;
		width: 450rpx;
		height: 70rpx;
		background: #0047ff;
		border-radius: 40rpx;
		color: #ffffff;
		text-align: center;
		line-height: 70rpx;
	}
}
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
			text-align: center;
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
