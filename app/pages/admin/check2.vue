<template>
	<view class="continer">
		<view class="card">
			<view class="userinfo">欢迎您：{{user.username}}</view>
			<view class="userinfo">{{user.department}} ： {{user.name}}</view>
		</view>
		<view class="card">

			<!--	<view class="centerForm" style="color: #888888;">
				格式: 编号——社区——施工方
			</view> -->
			<view class="filter">
				<u-row customStyle="margin-bottom: 10px" gutter="8">
					<u-col span="4" @click="show1 = true">
						<u-search  placeholder="社区" v-model="keyword1" :showAction="false" :clearabled="false"></u-search>
					</u-col>
					<u-col span="4" @click="show2 = true">
						<u-search placeholder="企业" v-model="keyword2" :showAction="false" :clearabled="false"></u-search>
					</u-col>
				    <u-col span="4" @click="show3 = true">
						<u-search placeholder="状态" v-model="keyword3" :showAction="false"  @search="searchHandler()"  @custom="searchHandler()"></u-search>
					</u-col>
				</u-row>
				
				<view class="filter-btn">
					<view>
						<u-button customStyle="width:100rpx;border-radius:6rpx;" type="primary" size="mini" :plain="true" text="清空" @click="clearHandler()"></u-button>
					</view>
					<view style="margin-left: 10rpx;">
						<u-button customStyle="width:100rpx;border-radius:6rpx;" type="primary" size="mini" text="搜索" @click="searchHandler()"></u-button>
					</view>
				</view>
			</view>


			<view class="form2">
				<scroll-view scroll-y="true" class="scroll-Y">
					<u-collapse>

						<u-collapse-item :title="obj.id + '-'+ obj.suoshushequ + '—' + obj.shigongfangName"
							v-for="obj in data.list">
							<text>作业面积：<span>{{obj.zuoyemianji}}</span></text>
							<text>作业地址：<span>{{obj.zuoyedizhi}}</span></text>
							<text>所属社区：<span>{{obj.suoshushequ}}</span></text>
							
							<view style="margin-top: 10rpx;margin-bottom: 10rpx;">
								<u-line></u-line>
							</view>
							
							<text>发包方名称：<span>{{obj.fabaofangName}}</span></text>
							<text>发包方手机号：<span>{{obj.fabaofangPhone}}</span></text>
							
							<text>施工方名称：<span>{{obj.shigongfangName}}</span></text>
							<text>施工方手机号：<span>{{obj.shigongfangPhone}}</span></text>
							<view style="margin-top: 10rpx;margin-bottom: 10rpx;">
								<u-line></u-line>
							</view>
							<text>施工时间：<span>{{obj.workingDate}}</span></text>
							<text>施工状态：<span>{{obj.workingStatus}}</span></text>
							
							<view class="zhifa" @click="checkHandler(obj)">去检查</view>
							<view style="height: 20rpx;"></view>
						</u-collapse-item>

					</u-collapse>
				</scroll-view>
			</view>
		</view>

		<view class="bottom">
			<view class="btns">
				<view class="info">
					{{ end }}
				</view>
			</view>
		</view>
		<u-picker :show="show1" :columns="columns1" @cancel="cancelHandler" @confirm="confirmHandler($event, 1)" :closeOnClickOverlay="true"></u-picker>
		<u-picker :show="show2" :columns="columns2" @cancel="cancelHandler" @confirm="confirmHandler($event, 2)" :closeOnClickOverlay="true"></u-picker>
		<u-picker :show="show3" :columns="columns3" @cancel="cancelHandler" @confirm="confirmHandler($event, 3)" :closeOnClickOverlay="true"></u-picker>
	</view>
</template>

<script>
	import {
		getKey,
		getTableByPhone,
		BASE_URL,
		getPage,
		filterApi
	} from 'api'
	export default {
		data() {
			return {
				user: {
					username: "",
					passwd: "",
				},
				data: {
					list: [], // 列表
					count: [], //总数
				},
				end: "",
				
				// xxxx
				show1: false,
				keyword1:"",
				columns1: [
					['获取失败']
				],
				show2: false,
				keyword2:"",
				columns2: [
					['获取失败']
				],
				show3: false,
				keyword3:"",
				columns3: [
					['在施', '超期', '已延期在施', '已销账']
				],
				// xxx
			};
		},
		async created() {
			let res3 = await this.$http.get(getKey + "end", {})
			this.end = res3.data.value
			
			let res4  = await this.$http.get(filterApi, {})
			// console.log(res4)
			if(res4.code == 200){
				this.columns1 =  [ res4.data.suoshushequ ]
				this.columns2 = [ res4.data.shigongfangName ]
			}
		},
		async onShow() {
			let user = uni.getStorageSync("Mt8p3QiZ")
			if (user) {
				this.user = user
			} else {
				uni.showToast({
					icon: "none",
					title: "未登录"
				})
				setTimeout(() => {
					uni.redirectTo({
						url: "/pages/admin/check"
					})
				}, 1000)
				return
			}

			this.getData()
		},
		methods: {
			checkHandler(obj){
				console.log(obj)
				uni.navigateTo({
					url:"/pages/admin/check3?id="+obj.id
				})
			},
			async getData(){
				let user = this.user;
				let res3 = await this.$http.get(getPage, {
					username: user.username,
					passwd: user.passwd,
					suoshushequ: this.keyword1,
					shigongfangName: this.keyword2,
					workStatus: this.keyword3,
				})
				console.log(res3)
				if (res3.code == 403) {
					console.log(res3)
					uni.showToast({
						icon: "none",
						title: "执法人员账号密码错误或没有权限",
						duration: 20000
					})
				} else if (res3.code == 200) {
					this.data = res3.data
				} else {
					uni.showToast({
						icon: "none",
						title: "获取台账失败",
						duration: 20000
					})
				}
			},
			cancelHandler() {
				this.show1 = false
				this.show2 = false
				this.show3 = false
			},
			confirmHandler(e,inx){
				this.cancelHandler()
				if(inx == 1){
					this.keyword1 = e.value[0]
				}else if(inx == 2){
					this.keyword2 = e.value[0]
				}else if(inx == 3){
					this.keyword3 = e.value[0]
				}
			},
			searchHandler(){
				console.log(this.keyword1,this.keyword2,this.keyword3)
				this.getData()
			},
			clearHandler(){
				this.keyword1 = "";
				this.keyword2 = "";
				this.keyword3 = "";
			}
		}
	}
</script>

<style lang="scss">
	page {
		background-image: url(@/static/page1/bg.png);
		background-size: cover;
	}
	button::after {
	  border: none;
	}
	

	.card {
		margin-top: 20rpx;
		padding: 25rpx 20rpx;
		padding-right: 18rpx;
		width: 94.7vw;
		background: #FFFFFF;
		border-radius: 8rpx;
	}

	.scroll-Y {
		height: 70vh;
	}
	.filter{
		
		.filter-btn{
			display: flex;
			// padding: 10rpx 100rpx;
			justify-content: left;
			// justify-content:flex-start;
		}
	}


	.continer {
		z-index: 1;
		padding: 20rpx 20rpx;
		
		.bottom {
			z-index: 100;

			.info {
				width: 750rpx;
				margin-top: 20rpx;
				font-weight: 400;
				font-size: 24rpx;
				color: #888888;
				line-height: 34rpx;
				text-align: center;
				font-style: normal;
			}
		}

		.centerForm {
			position: relative;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}

		.title {
			height: 50rpx;
		}

		.form2 {
			margin-top: 30rpx;

			.form2-info {
				color: #888888;
			}
		}

	}

	.zhifa {
		margin: 10rpx 100rpx;
		background-color: #1b46f5;
		height: 50rpx;
		color: #ffffff;
		text-align: center;
		line-height: 50rpx;
		border-radius: 10rpx;
		padding: 2rpx 10rpx;
		padding-bottom: 20rpx;
	}
</style>