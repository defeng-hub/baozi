<template>
	<view class="continer">
		<view class="card">
			<view style="padding: 10rpx 20rpx;">
				<view class="title" style="margin-bottom: 12rpx;">一、资质情况</view>
				<view class="info">
					<view>作业面积：<span>{{data.zuoyemianji}}</span></view>
					<view>作业地址：<span>{{data.zuoyedizhi}}</span></view>
					<view>所属社区：<span>{{data.suoshushequ}}</span></view>
					<view style="margin-top: 10rpx;margin-bottom: 10rpx;">
						<u-line></u-line>
					</view>
					<view>发包方名称：<span>{{data.fabaofangName}}</span></view>
					<view>发包方手机号：<span>{{data.fabaofangPhone}}</span></view>
					
					<view>施工方名称：<span>{{data.shigongfangName}}</span></view>
					<view>施工方手机号：<span>{{data.shigongfangPhone}}</span></view>
					<view style="margin-top: 10rpx;margin-bottom: 10rpx;">
						<u-line></u-line>
					</view>
					<view>施工时间：<span>{{data.workingDate}}</span></view>
					<view>施工状态：<span>{{data.workingStatus}}</span></view>
					<view style="margin-top: 10rpx;">
						<u-line></u-line>
					</view>
				</view>
				
				<view class="title" style="margin-top: 30rpx;margin-bottom: 12rpx;">二、执法检查（上传现场情况）</view>
				<u--form labelPosition="left" :model="model1" ref="uForm">
					
					<u-form-item :labelWidth="230" label="照片/视频：" prop="name" borderBottom>
						<u-upload accept="file" width="300rpx" height="300rpx" :fileList="model1.file"
							@afterRead="afterRead($event, 'file')" @delete="deletePic('file')" :maxCount="1"></u-upload>
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
					<u-form-item :labelWidth="270" label="是否新增违法建设：" prop="name" borderBottom>
						<u--input v-model="model1.weifajianshe" placeholder="是否新增违法建设"></u--input>
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
					text:"",
					weifajianshe:""
				},
				title1: "111",
				title2: "222",
				end: "",
			};
		},
		async created() {
			let res3 = await this.$http.get(getKey + "end", {})
			this.end = res3.data.value
		},
		async onLoad(param) {
			let res4 = await this.$http.get(getTableById + param.id, {})
			console.log(res4)
			this.data = res4.data;
			this.model1.pid = res4.data.id
		},
		onShow() {
			let user = uni.getStorageSync("Mt8p3QiZ")
			if (user) {
				this.model1.name = user.name
				this.model1.department = user.department
			}
		},
		methods: {
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