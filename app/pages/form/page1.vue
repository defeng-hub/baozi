<template>
	<view class="continer">
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
		
		<u-popup :show="show" closeable closeOnClickOverlay @close="close" >
			<view class="popup">
				<u--form style="width: 670rpx;" labelPosition="left" :model="model1" :rules="rules" ref="uForm">
					<u-form-item :labelWidth="200" label="手机号：" prop="phone" borderBottom>
						<u--input :maxlength="11" v-model="model1.phone" placeholder="手机号必填" border="none"></u--input>
					</u-form-item>
					<u-form-item :labelWidth="200" label="验证码：" prop="authcode" borderBottom>
						<u--input v-model="model1.authcode" placeholder="请输入验证码"  border="none"></u--input>
						<template slot="right">
							<u-button :disabled="model1.phone.length != 11" type="primary" :plain="true" style="right: 20rpx;" size="mini">获取验证码</u-button>
						</template>
					</u-form-item>
					
					<view class="btn3" @click="queryBeian()">查询备案记录</view>
				</u--form>
			</view>
		</u-popup>
	</view>
</template>

<script>
	import { getKey,getTableByPhone } from 'api'
	export default {
		data() {
			return {
				model1:{
					phone:"",
					authcode:"",
				},
				rules: {
					'phone':{
						type: 'string',
						required: true,
						max:11,
						min:11,
						message: '手机号不符合要求',
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
			next(){
				console.log("next")
				uni.navigateTo({url:"/pages/form/page2"})
			},
			query(){
				// console.log("query")
				this.show = true;
			},
			async queryBeian(){
				this.$refs.uForm.validate().then(async (res) => {
					console.log(this.model1)
					let resp = await this.$http.get(getTableByPhone + this.model1.phone, {})
					console.log(resp)
					if(resp.code == 200){
						if(resp.msg == "查看对象不存在或无权查看"){
							uni.showToast({
								title:"未查询到任何备案",
								icon:"none"
							})
						}else{
							if(resp.data?.status  == "审核未通过"){
								// console.log(resp.data?.status)
								uni.navigateTo({
									url:"/pages/form/page4?"+"HJnq8c="+resp.data?.id
								})
							}else if(resp.data?.status  == ""){
								// console.log(resp.data?.status)
								//待审核
								uni.navigateTo({
									url:"/pages/form/page4?"+"HJnq8c="+resp.data?.id
								})
							}else if(resp.data?.status  == "审核通过"){
								console.log("审核通过审核通过审核通过")
							}
						}
					}
				}).catch(errors => {
					uni.$u.toast('资料填写不完整')
				})

			},
			close(){
				this.show = false;
			}
		}
	}
</script>

<style lang="scss">
page{
	background-image: url(@/static/page1/bg.png);
	background-size: cover;
}
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
	width: 100%;
	height: 110vh;
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
			top: 150rpx;
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
			top: 230rpx;
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

</style>
