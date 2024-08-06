<template>
	<view class="continer">
		<view class="card">
			<view style="padding: 10rpx 20rpx;" >
				<view class="title" style="margin-bottom: 12rpx;">一、资质情况</view>
				<view class="info" v-if="data">
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
			</view>
		</view>
		<view class="card" v-for="obj in list">
			<view style="padding: 10rpx 20rpx;" >
				<view class="title" style="margin-bottom: 12rpx;">序号： {{obj.id}}</view>
				<view class="info">
					<view>上传时间：<span>{{obj.createdAt}}</span></view>
					<view>检查人：<span>{{obj.user}}</span></view>
					<view>所属社区：<span>{{obj.department}}</span></view>
					<view style="margin-top: 10rpx;margin-bottom: 10rpx;">
						<u-line></u-line>
					</view>
					<view>检查情况：<span>{{obj.text}}</span></view>
					<view>是否新增违法建筑：<span>{{obj.text2}}</span></view>
					
				</view>
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
		saveZhifaCheckApi,
		pageZhifaCheckApi
	} from 'api'
	export default {
		data() {
			return {
				data:null,
				list:[],
			};
		},
		async onLoad(param) {
			if(param.id){
				let res1 = await this.$http.get(getTableById + param.id, {})
				console.log(res1)
				this.data = res1.data;
				
				let res4 = await this.$http.get(pageZhifaCheckApi, {pid: param.id})
				console.log(res4)
				this.list = res4.data.list;
			}
			

		},
	}
</script>

<style lang="scss">
page {
	background-image: url(@/static/page1/bg.png);
	background-size: cover;
}
.continer {
	z-index: 1;
	padding: 20rpx 20rpx;
}
.card {
	margin-top: 20rpx;
	padding: 25rpx 20rpx;
	padding-right: 18rpx;
	width: 94.7vw;
	background: #FFFFFF;
	border-radius: 8rpx;
}
</style>
