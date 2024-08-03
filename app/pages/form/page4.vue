<template>
	<view class="continer">
		<view class="card" v-if="status.show">
			<view class="status">
				审核状态：
				<text v-if="status.status == ''">待审核</text>
				<text v-else>{{status.status}}</text>
			</view>
			<view class="status">
				审核留言：
				<text v-if="status.remark == ''">无</text>
				<text v-else>{{status.remark}}</text>
			</view>
		</view>
		<view class="card">
			<u--form style="width: 670rpx;" labelPosition="left" :model="model1" :rules="rules" ref="uForm">
				<u-form-item :labelWidth="200" label="手机号：" prop="phone" borderBottom>
					<u--input :maxlength="11" v-model="model1.phone" placeholder="手机号必填" border="none"></u--input>
				</u-form-item>
				<u-form-item :labelWidth="200" label="验证码：" prop="authcode" borderBottom>
					<u--input v-model="model1.authcode" placeholder="请输入验证码" border="none"></u--input>
					<template slot="right">
						<u-button :disabled="model1.phone.length != 11" type="primary" :plain="true"
							style="right: 20rpx;" size="mini">获取验证码</u-button>
					</template>
				</u-form-item>

				<view class="title" style="margin-top: 20rpx;">一、基本信息上传</view>
				<u-form-item :labelWidth="200" label="作业面积：" prop="zuoyemianji" borderBottom>
					<u--input v-model="model1.zuoyemianji" border="none"></u--input>
				</u-form-item>
				<u-form-item :labelWidth="200" label="作业地址：" prop="zuoyedizhi" borderBottom>
					<u--input v-model="model1.zuoyedizhi" border="none"></u--input>
				</u-form-item>
				<u-form-item :labelWidth="200" label="所属社区：" prop="suoshushequ" borderBottom>
					<u--input v-model="model1.suoshushequ" border="none"></u--input>
				</u-form-item>

				<u-form-item :labelWidth="200" label="发包方（甲方）名称：" prop="fabaofang.name" borderBottom>
					<u--input v-model="model1.fabaofang.name" border="none"></u--input>
				</u-form-item>
				<u-form-item :labelWidth="200" label="联系人：" prop="fabaofang.user" borderBottom>
					<u--input v-model="model1.fabaofang.user" border="none"></u--input>
				</u-form-item>
				<u-form-item :labelWidth="200" label="联系方式：" prop="fabaofang.phone" borderBottom>
					<u--input v-model="model1.fabaofang.phone" border="none"></u--input>
				</u-form-item>

				<u-form-item :labelWidth="200" label="施工方（乙方）公司名称：" prop="shigongfang.name" borderBottom>
					<u--input v-model="model1.shigongfang.name" border="none"></u--input>
				</u-form-item>
				<u-form-item :labelWidth="200" label="项目负责人：" prop="shigongfang.user" borderBottom>
					<u--input v-model="model1.shigongfang.user" border="none"></u--input>
				</u-form-item>
				<u-form-item :labelWidth="200" label="联系方式：" prop="shigongfang.phone" borderBottom>
					<u--input v-model="model1.shigongfang.phone" border="none"></u--input>
				</u-form-item>


				<view class="title" style="margin-top: 30rpx;">二、资质上传（均须提供复印件并加盖公章）</view>

				<u-form-item :labelWidth="200" label="营业执照：" prop="yingyezhizhao" borderBottom>
					<u-upload accept="file" width="200" height="200" :fileList="model1.yingyezhizhao" :maxCount="1"
						@afterRead="afterRead($event, 'yingyezhizhao')" @delete="deletePic('yingyezhizhao')">
						<image src="@/static/page4/positive4.png" mode="widthFix" style="width: 250rpx;height: 150px;">
						</image>
					</u-upload>
				</u-form-item>

				<u-form-item :labelWidth="200" :label="'法人身份证：'" prop="farenId" borderBottom>
					<u-upload accept="file" :fileList="model1.farenId" @afterRead="afterRead($event, 'farenId')"
						@delete="deletePic('farenId')" :maxCount="1" width="250" height="150">
						<image src="@/static/page4/positive.png" mode="widthFix" style="width: 250rpx;height: 150px;">
						</image>
					</u-upload>
				</u-form-item>

				<u-form-item :labelWidth="200" label="建筑企业资质安全生产许可证：" prop="anquanxvkezheng" borderBottom>
					<u-upload accept="file" width="200" height="200" :fileList="model1.anquanxvkezheng" :maxCount="1"
						@afterRead="afterRead($event, 'anquanxvkezheng')" @delete="deletePic('anquanxvkezheng')">
						<image src="@/static/page4/positive4.png" mode="widthFix" style="width: 250rpx;height: 150px;">
						</image>
					</u-upload>
				</u-form-item>

				<u-form-item :labelWidth="200" label="授权委托书：" prop="shouquanweituozhu" borderBottom>
					<u-upload accept="file" width="200" height="200" :fileList="model1.shouquanweituozhu" :maxCount="1"
						@afterRead="afterRead($event, 'shouquanweituozhu')" @delete="deletePic('shouquanweituozhu')">
						<image src="@/static/page4/positive4.png" mode="widthFix" style="width: 250rpx;height: 150px;">
						</image>
					</u-upload>
				</u-form-item>

				<u-form-item :labelWidth="200" :label="'项目负责人身份证：'" prop="fuzerenId" borderBottom>
					<u-upload accept="file" :fileList="model1.fuzerenId" @afterRead="afterRead($event, 'fuzerenId')"
						@delete="deletePic('fuzerenId')" :maxCount="1" width="250" height="150">
						<image st src="https://cdn.uviewui.com/uview/demo/upload/positive.png" mode="widthFix"
							style="width: 250rpx;height: 150px;"></image>
					</u-upload>
				</u-form-item>

				<u-form-item :labelWidth="200" label="甲乙双方施工合同：" prop="jiayishuangfangshigonghetong" borderBottom>
					<u-upload accept="file" width="200" height="200" :fileList="model1.jiayishuangfangshigonghetong"
						:maxCount="1" @afterRead="afterRead($event, 'jiayishuangfangshigonghetong')"
						@delete="deletePic('jiayishuangfangshigonghetong')">
						<image src="@/static/page4/positive4.png" mode="widthFix" style="width: 250rpx;height: 150px;">
						</image>
					</u-upload>
				</u-form-item>

				<u-form-item :labelWidth="200" label="安全生产责任保险：" prop="anquanshengchanzerenbaoxian" borderBottom>
					<u-upload accept="file" width="200" height="200" :fileList="model1.anquanshengchanzerenbaoxian"
						:maxCount="1" @afterRead="afterRead($event, 'anquanshengchanzerenbaoxian')"
						@delete="deletePic('anquanshengchanzerenbaoxian')">
						<image src="@/static/page4/positive4.png" mode="widthFix" style="width: 250rpx;height: 150px;">
						</image>
					</u-upload>
				</u-form-item>

				<view class="title" style="margin-top: 30rpx;">三、注意事项</view>

				<view class="notice" style="margin-top: 10rpx;">
					限额以下施工备案全过程免费，不收取任何费用！
					施工备案只验证施工单位资质，不具备法定审批属性，不能代表施工过程中其他安全管理是否合格。
					其他相关施工过程中的管理内容，还需相关部门按照法定职责进行检查。
				</view>
			</u--form>
		</view>

		<view class="btns" v-if="status.show == false">
			<view class="btn1" @click="pre">
				<text>上一页</text>
			</view>
			<view class="btn2" @click="submit">
				<text>提交审核</text>
			</view>
		</view>

		<view class="btn" v-if="status.show == true && status.status == '审核未通过'">
			<u-button @click="submit" iconColor="#003eff" color="#003eff" type="primary" text="重新提交"></u-button>
		</view>
	</view>
</template>

<script>
	import {
		getKey,
		submitApi,
		getTableByDesId,
		BASE_URL
	} from 'api'
	export default {
		data() {
			return {
				status: {
					status: "",
					remark: "",
					show: false,
				},
				model1: {
					phone: "",
					zuoyemianji: "测试",
					zuoyedizhi: "",
					suoshushequ: "",
					fabaofang: {
						name: "",
						user: "",
						phone: "",
					},
					shigongfang: {
						name: "",
						user: "",
						phone: "",
					},
					yingyezhizhao: [], //营业执照 file
					farenId: [], //法人身份证
					anquanxvkezheng: [], //建筑企业资质安全生产许可证
					shouquanweituozhu: [], //授权委托书
					fuzerenId: [], //负责人身份证
					jiayishuangfangshigonghetong: [], // 甲乙双方施工合同
					anquanshengchanzerenbaoxian: [], // 安全生产责任保险
				},
				rules: {
					'phone': {
						type: 'string',
						required: true,
						max: 11,
						min: 11,
						message: '手机号不符合要求',
						trigger: ['blur', 'change']
					},
					'zuoyemianji': {
						type: 'string',
						required: true,
						message: '请填写作业面积',
						trigger: ['blur', 'change']
					},
					'zuoyedizhi': {
						type: 'string',
						required: true,
						message: '请填写作业地址',
						trigger: ['blur', 'change']
					},
					'suoshushequ': {
						type: 'string',
						required: true,
						message: '请填写所属社区',
						trigger: ['blur', 'change']
					},
					'fabaofang.name': {
						type: 'string',
						required: true,
						message: '请填写发包方名称',
						trigger: ['blur', 'change']
					},
					'fabaofang.user': {
						type: 'string',
						required: true,
						message: '请填写发包方负责人',
						trigger: ['blur', 'change']
					},
					'fabaofang.phone': {
						type: 'string',
						required: true,
						message: '请填写发包方电话',
						trigger: ['blur', 'change']
					},
					'shigongfang.name': {
						type: 'string',
						required: true,
						message: '请填写施工方公司名称',
						trigger: ['blur', 'change']
					},
					'shigongfang.user': {
						type: 'string',
						required: true,
						message: '请填写施工方负责人',
						trigger: ['blur', 'change']
					},
					'shigongfang.phone': {
						type: 'string',
						required: true,
						message: '请填写施工方电话',
						trigger: ['blur', 'change']
					},
					// 'yingyezhizhao': {
					// 	type: 'array',
					// 	required: true,
					// 	message: '请上传营业执照',
					// 	trigger: ['blur', 'change']
					// },
					// 'farenId': {
					// 	type: 'array',
					// 	required: true,
					// 	message: '请上传法人身份证',
					// 	trigger: ['blur', 'change']
					// },
					// 'anquanxvkezheng': {
					// 	type: 'array',
					// 	required: true,
					// 	message: '请上传建筑企业资质安全生产许可证',
					// 	trigger: ['blur', 'change']
					// },
					// 'shouquanweituozhu': {
					// 	type: 'array',
					// 	required: true,
					// 	message: '请上传授权委托书',
					// 	trigger: ['blur', 'change']
					// },
					// 'fuzerenId': {
					// 	type: 'array',
					// 	required: true,
					// 	message: '请上传项目负责人身份证',
					// 	trigger: ['blur', 'change']
					// },
					// 'jiayishuangfangshigonghetong': {
					// 	type: 'array',
					// 	required: true,
					// 	message: '请上传甲乙双方施工合同',

					// 	trigger: ['blur', 'change']
					// },
					// 'anquanshengchanzerenbaoxian': {
					// 	type: 'array',
					// 	required: true,
					// 	message: '请上传安全生产责任保险',
					// 	trigger: ['blur', 'change']
					// },

				},
			};
		},
		methods: {
			// http://127.0.0.1:8100/static/uploadfile/75bf6c69-abc8-48cc-94d3-8ddaa8c34f4b.jpg
			pre(){
				uni.navigateTo({
					url:"/pages/form/page3"
				})
			},
			submit() {
				this.$refs.uForm.validate().then(res => {
					console.log(this.model1)
					this.$http.post(submitApi, this.model1, {}).then(res => {
						console.log(res)
						if (res.data == 0 && res.code == 200) {
							console.log("提交成功")
							uni.navigateTo({
								url: "/pages/form/page5"
							})
						} else {
							uni.showToast({
								icon: "none",
								title: res?.msg
							})
						}
					})
				}).catch(errors => {
					uni.$u.toast('资料填写不完整')
				})
			},
			// 删除图片
			deletePic(event) {
				console.log(this.model1[`${event}`])
				this.model1[`${event}`].splice(event.index, 1)
			},
			// 新增图片
			async afterRead(event, filen) {
				console.log(event, filen)
				const result = await this.uploadFilePromise(event.file.url)
				console.log(result)
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
		},
		onReady() {
			//如果需要兼容微信小程序，并且校验规则中含有方法等，只能通过setRules方法设置规则。
			this.$refs.uForm.setRules(this.rules)
		},
		async onLoad(param) {
			// HJnq8c id
			if (param["HJnq8c"]) {
				// console.log(param["HJnq8c"])
				console.log(this.model1)
				let resp = await this.$http.get(getTableByDesId + param["HJnq8c"], {})
				console.log(resp)
				this.status.show = true;
				this.status.remark = resp.data.data.remark;
				this.status.status = resp.data.data.status;
				this.model1 = {
					...this.model1,
					...resp.data.form
				};
				console.log(this.model1)
			}
		}
	};
</script>
<style>
	page {
		background-image: url(@/static/page1/bg.png);
		background-size: cover;
		background-color: #4274fa;
	}

	.continer {
		padding: 20rpx 20rpx;
		font-size: 28rpx;
		word-wrap: break-word;
	}
</style>

<style lang="scss">
	page {
		background-image: url(@/static/page1/bg.png);
		background-size: cover;
	}

	.top {
		.title {
			text-align: center;
			font-size: 38rpx;
			margin-bottom: 20rpx;
			font-weight: 600;
		}

		.gaozhi {
			word-wrap: break-word;
		}

		.download {
			margin-top: 20rpx;
			display: flex;
			justify-content: left;
		}

		.info {
			margin-top: 20rpx;
		}
	}

	.card {
		margin-top: 20rpx;
		padding: 25rpx 32rpx;
		width: 94.7vw;
		background: #FFFFFF;
		border-radius: 8rpx;

		.status {
			font-size: 28rpx;
			margin-top: 10rpx;
		}

		.title {
			font-weight: 600;
		}

		.notice {
			text-indent: 1em;
		}
	}

	.btn {
		padding: 40rpx 100rpx;
	}

	.btns {
		display: flex;
		justify-content: space-around;
		margin-top: 40rpx;

		.btn1 {
			border-radius: 10rpx;
			width: 250rpx;
			height: 80rpx;
			line-height: 80rpx;
			background: #0047ff;
			color: #0047ff;
			text-align: center;
			background: #FFFFFF;
			border: 1rpx solid #165DFF;
		}

		.btn2 {
			border-radius: 10rpx;
			width: 250rpx;
			height: 80rpx;
			text-align: center;
			line-height: 80rpx;
			color: #ffffff;
			background: #0051FF;
			border: 1rpx solid #165DFF;
		}
	}
</style>