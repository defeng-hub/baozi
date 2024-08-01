<template>
	<view class="content">
		<image class="logo" src="/static/logo.png"></image>
		<view class="text-area">
			<text class="title">{{title}}</text>
			<button @click="receiveMember">cli</button>
		</view>
		
		<view>
			<u-button @click="">打开ActionSheet</u-button>
		</view>
	</view>
</template>

<script>
	import { GAME_DATA, TEST_DATA,gameList } from 'api'
	export default {
		data() {
			return {
				title: 'Hello'
			}
		},
		onLoad() {
			// this.receiveCMS()
			// this.receiveMember()
			this.gameList2()
		},
		methods: {
			gameList2(){
				const data = {
					"Page": 1,
					"Limit": 10
				}
				this.$http.get(gameList, data, { showLoading: true, cache: true, expires: 1000 * 60 * 60 }).then(res => {
					console.log("🚀 ~ file: index.vue ~ line 47 ~ this.$http.get ~ res", res)
				})
			},
			receiveCMS() {
				const data = {
					"Page": 1,
					"Limit": 10
				}
				this.$http.post(TEST_DATA, data, { showLoading: true }).then(res => {
            		console.log("🚀 ~ file: index.vue ~ line 33 ~ this.$http.post ~ res", res)
				})
			},
			async receiveCMSAsync() {
				const data = {
					"Page": 1,
          			"Limit": 10
				}
				const res = await this.$http.post(TEST_DATA, data, { showLoading: true })
				console.log("🚀 ~ file: index.vue ~ line 43 ~ receiveCMSAsync ~ res", res)
			},
			receiveMember() {
				// 开启缓存，设置缓存时间为一个小时，缓存的模式为localStorage
				const data = {}
				this.$http.get(GAME_DATA, data, { showLoading: true, cache: true, expires: 1000 * 60 * 60 }).then(res => {
          			console.log("🚀 ~ file: index.vue ~ line 47 ~ this.$http.get ~ res", res)
				})
			},
			async receiveMemberAsync() {
				// 开启缓存，设置缓存时间为一个小时，缓存的模式为localStorage
				const data = {}
				const res = await this.$http.get(GAME_DATA, data, { showLoading: true, cache: true, expires: 1000 * 60 * 60 })
				console.log("🚀 ~ file: index.vue ~ line 54 ~ receiveMemberAsync ~ res", res)
			}
		}
	}
</script>

<style>
	.content {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
	}

	.logo {
		height: 200rpx;
		width: 200rpx;
		margin-top: 200rpx;
		margin-left: auto;
		margin-right: auto;
		margin-bottom: 50rpx;
	}

	.text-area {
		display: flex;
		justify-content: center;
	}

	.title {
		font-size: 36rpx;
		color: #8f8f94;
	}
</style>
