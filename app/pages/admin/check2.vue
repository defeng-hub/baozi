<template>
	<view class="continer" @touchmove.stop.prevent="() => {}">
		<view class="title">
			<view class="title1">{{title1}}</view>
			<view class="title2">{{ title2 }}</view>
		</view>

		<view class="centerForm" style="margin-top: 30vh;">
			<u--form style="width: 500rpx;" labelPosition="left" :model="model1" ref="uForm">
				<view class="center">
					<u-upload accept="file" width="400rpx" height="400rpx" :fileList="model1.video" @afterRead="afterRead($event, 'video')" @delete="deletePic('video')" :maxCount="1"></u-upload>
				</view>

				<u-form-item :labelWidth="200" label="姓名：" prop="name" borderBottom style="margin-top: 50rpx;">
					<u--input :maxlength="11" v-model="model1.name" placeholder="姓名" border="none"></u--input>
				</u-form-item>
				<u-form-item :labelWidth="200" label="所属部门：" prop="department" borderBottom>
					<u--input v-model="model1.department" placeholder="所属部门" border="none"></u--input>
				</u-form-item>
				<u-form-item :labelWidth="200" label="所属部门：" prop="department" borderBottom>
					<u--input v-model="model1.department" placeholder="所属部门" border="none"></u--input>
				</u-form-item>
			</u--form>

		</view>
		
		<view class="bottom">
			<view class="btns">
				<view class="btn1" @click="check">上传照片/视频</view>
				<view class="info">
					{{ end }}
				</view>
			</view>
		</view>

	</view>
</template>

<script>
	import {
		getKey,
		getTableByPhone,
		BASE_URL
	} from 'api'
	export default {
		data() {
			return {
				model1:{
					name:"",
					department:"",
					video:[],
				},
				title1: "",
				title2: "",
				end: "",
			};
		},
		async created() {
			let res1 = await this.$http.get(getKey + "zhifa-title1", {})
			this.title1 = res1.data.value

			let res2 = await this.$http.get(getKey + "zhifa-title2", {})
			this.title2 = res2.data.value

			let res3 = await this.$http.get(getKey + "end", {})
			this.end = res3.data.value
			// console.log(this.title1,this.title2)
		},
		onShow() {
			let user = uni.getStorageSync("Mt8p3QiZ")
			if(user){
				this.model1.name = user.name
				this.model1.department = user.department
			}
		},
		methods: {
			check() {

			},
			query() {

			},
			async afterRead(event, filen) {
				const result = await this.uploadFilePromise(event.file.url)
				this.model1[filen].push({
					url: BASE_URL + result.data.path
				})
			},
			uploadFilePromise(url) {
				return new Promise((resolve, reject) => {
					let a = uni.uploadFile({
						url: BASE_URL + '/api/v1/public/uploadFile', // 仅为示例，非真实的接口地址
						filePath: url,
						name: 'file',
						formData: {
							user: 'test'
						},
						success: (res) => {
							resolve(JSON.parse(res.data))
						}
					});
				})
			},
			// 删除图片
			deletePic(event) {
				this.model1[`${event}`].splice(event.index, 1)
			},
		}
	}
</script>

<style lang="scss">
	.popup {
		min-height: 500rpx;
		margin-top: 20rpx;
		padding: 40rpx 32rpx;
		width: 94.7vw;
		background: #FFFFFF;
		border-radius: 8rpx;

		.btn3 {
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

	.continer {
		z-index: 1;
		position: fixed;
		height: 100%;
		width: 100%;

		.bottom {
			position: fixed;
			bottom: 50rpx;
			z-index: 100;

			.info {
				margin-top: 20rpx;
				font-weight: 400;
				font-size: 24rpx;
				color: #888888;
				line-height: 34rpx;
				text-align: center;
				font-style: normal;
			}

			.btns {
				padding: 20rpx 70rpx;

				.btn1 {
					width: 600rpx;
					height: 92rpx;
					background: #0047ff;
					border-radius: 40rpx;
					color: #ffffff;
					text-align: center;
					line-height: 92rpx;
				}

				.btn2 {
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
		.centerForm{
			position: relative;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
		.center {
			position: relative;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}

		.title {
			position: absolute;

			.title1 {
				position: absolute;
				top: 180rpx;
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

			.title2 {
				position: absolute;
				text-align: center;
				top: 280rpx;
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

	page {
		background-image: url(@/static/page1/bg.png);
		background-size: cover;
	}
</style>