<template>
	<view class="continer">
		<view class="card">
			<view style="padding: 10rpx 20rpx;">
				<view class="title" style="margin-bottom: 12rpx;">一、资质情况</view>
				<view class="info">
					<view>所属社区：<span>{{data.suoshushequ}}</span></view>
					<view>作业地址：<span>{{data.zuoyedizhi}}</span></view>
					<view>作业面积：<span>{{data.zuoyemianji}}</span></view>
					<view>施工金额：<span>{{data.shigongjine}}</span></view>
					
					<view>
						作业内容：
						<span v-if="data.zuoyeneirong!=''">{{data.zuoyeneirong}}</span>
						<span v-else>空</span>
					</view>
					<view style="margin-top: 10rpx;margin-bottom: 10rpx;">
						<u-line></u-line>
					</view>
					
					<view>
						涉及特种作业：
						<span v-if="data.shifoushejitezhongzuoye!=''">{{data.shifoushejitezhongzuoye}}</span>
						<span v-else>空</span>
					</view>
					
					<view>
						涉及动火作业：
						<span v-if="data.shifoushejidonghuozuoye!=''">{{data.shifoushejidonghuozuoye}}</span>
						<span v-else>空</span>
					</view>
					
					<view>
						施工时间：
						<span v-if="data.workingDate!=''">{{data.workingDate}}</span>
						<span v-else>空</span>
					</view>
					
					<view>
						施工状态：
						<span v-if="data.workingStatus!=''">{{data.workingStatus}}</span>
						<span v-else>空</span>
					</view>
					
					<view style="margin-top: 10rpx;">
						<u-line></u-line>
					</view>
				</view>
				
				<view class="title" style="margin-top: 30rpx;margin-bottom: 12rpx;">二、执法检查（上传现场情况）</view>
				<u--form labelPosition="left" :model="model1" ref="uForm">
					<u-form-item :labelWidth="230" label="照片/视频：" prop="name" borderBottom>
						<u-upload accept="video" :maxDuration="30" capture="camera" width="300rpx" height="300rpx" :fileList="model1.file"
							@afterRead="afterRead($event, 'file')" @delete="deletePic('file')" :maxCount="1"></u-upload>
					</u-form-item>
					
					<u-form-item :labelWidth="230" label="检查单：" prop="name" borderBottom>
						<u-upload accept="image" capture="camera" width="300rpx" height="300rpx" :fileList="model1.file2"
							@afterRead="afterRead($event, 'file2')" @delete="deletePic('file2')" :maxCount="1"></u-upload>
					</u-form-item>

					<u-form-item :labelWidth="230" label="姓名：" prop="name" borderBottom>
						<u--input :maxlength="11" v-model="model1.name" placeholder="姓名" border="none"></u--input>
					</u-form-item>
					<u-form-item :labelWidth="230" label="所属部门：" prop="department" borderBottom>
						<u--input v-model="model1.department" placeholder="所属部门" border="none"></u--input>
					</u-form-item>
					<u-form-item :labelWidth="230" label="检查情况：" prop="name" borderBottom>
						<u--textarea v-model="model1.text" placeholder="检查情况" count autoHeight></u--textarea>
					</u-form-item>
					<u-form-item :labelWidth="270" label="是否存在违法建设：" prop="name" borderBottom>
						<u--input v-model="model1.text2" placeholder="是否存在违法建设"></u--input>
					</u-form-item>
				</u--form>
			</view>
			
			<view class="btns">
				<view class="btn1" @click="check">上传照片/视频</view>
			</view>

		</view>

	</view>
</template>

<script>
	import {
		getKey,
		getTableByPhone,
		loginApi,
		BASE_URL,
		getTableById,
		saveZhifaCheckApi
	} from 'api'
	export default {
		data() {
			return {
				data: {},
				model1: {
					pid: 0,
					name: "",
					department: "",
					file: [],
					file2: [],
					text:"",
					text2:""
				},
				model2:{
					username:"",
					passwd:"",
				},
				end: "",
			};
		},
		async created() {
			let res3 = await this.$http.get(getKey + "end", {})
			this.end = res3.data.value
		},
		async onLoad(param) {
			
			let log = await this.loginCheck()
			if (log == true){
				if(param["g67ac"]) {
					this.model1.pid = param["g67ac"]
					this.getdata(param)
				}else{
					uni.reLaunch({
						url:"/pages/form/page1"
					})
				}
			}else{
				uni.reLaunch({
					url:"/pages/form/page1"
				})
			}
			


		},
		onShow() {

		},
		methods: {
			async loginCheck(){
				let user = uni.getStorageSync("Mt8p3QiZ")
				if (user) {
					this.model2.username = user?.username
					this.model2.passwd = user?.passwd
					
					let res = await this.$http.post(loginApi, this.model2, {})
					if (res.code == 200){
						if(res.data.status == false){
							return false
						}else{
							uni.setStorageSync("Mt8p3QiZ", res.data.user)
							return true
						}
					}else{
						return false
					}
				}else{
					return false
				}
			},
			async getdata(param){
				let res4 = await this.$http.get(getTableById + param["g67ac"], {})
				console.log(res4)
				this.data = res4.data;
				this.model1.pid = res4.data.id
			},
			async check() {
				console.log(this.model1)
				console.log(saveZhifaCheckApi)
				let res = await this.$http.post(saveZhifaCheckApi, this.model1)
				if(res.code == 200){
					uni.showToast({
						title:"上传成功",
						icon:"none",
						duration:6000
					})
				}else{
					uni.showToast({
						title:"上传失败",
						icon:"none",
						duration:6000
					})
				}
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
	.card {
		margin-top: 20rpx;
		padding: 25rpx 20rpx;
		padding-right: 18rpx;
		width: 94.7vw;
		background: #FFFFFF;
		border-radius: 8rpx;
	}
	.info{
		font-size: 26rpx;
	}
	.title{
		font-weight: 600;
	}
	.continer {
		z-index: 1;
		padding: 20rpx 20rpx;

		.btns {
			position: relative;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
			margin-top: 30rpx;
			.btn1 {
				width: 380rpx;
				height: 60rpx;
				background: #0047ff;
				border-radius: 8rpx;
				color: #ffffff;
				text-align: center;
				line-height: 60rpx;
			}
		}

		.centerForm {
			position: relative;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
	}

	page {
		background-image: url(@/static/page1/bg.png);
		background-size: cover;
	}
</style>