<!--
 * @Author: GaoTang
 * @Company: ShineSoft
 * @Date: 2021-07-19 19:49:01
 * @LastEditors: GaoTang
 * @LastEditTime: 2021-07-20 00:04:28
 * @FilePath: \tpl-uni-https\README.md
 * @Email: qq23745038@126.com
-->

# tpl-uni-https

#### 介绍

1. 初始化 tpl-uni-https 项目
2. 处理上传包文件的内容
3. 更新 cache.js 中的缓存组件为 uni.xxxxStorageSync
4. 添加全局 loading 动画,默认关闭状态
5. 添加日志文件

封装的 request 网络请求

根据 axios 的源码完全重构的一个 request 插件，支持拦截器、Promise、无刷新 token



## uni-axios

使用 axios 封装 request 网络请求库

## 安装

1. 使用 HBuilderX 导入插件或者下载压缩包把文件解压到 js_sdk 目录下
2. 安装 axios
   `npm install`

## 使用方式：

```
1、将api目录复制到项目中

2、在main.js文件中引入install.js

如下:
//引入request
import { install as Axios } from './api/install'
Vue.use(Axios)

3、在pages文件中直接使用
如下:
receiveCMS() {
  // post参数形式为formData
  const data = {
    "Page": 1,
      "Limit": 10
  }
  this.$http.post(TEST_DATA, data, { showLoading: true }).then(res => {
              console.log(`🚀 ~ file: index.vue ~ line 32 ~ this.$_post ~ res`, res)
  })
},
receiveMember() {
  // 开启缓存，设置缓存时间为一个小时，缓存的模式为localStorage
  const data = {}
  this.$http.get(GAME_DATA, data, { showLoading: true, cache: true, expires: 1000 * 60 * 60 }).then(res => {
              console.log(`🚀 ~ file: index.vue ~ line 39 ~ this.$_get ~ res`, res)
  })
}
```

隐私、权限声明

1. 本插件需要申请的系统权限列表：
   无

2. 本插件采集的数据、发送的服务器地址、以及数据用途说明：
   无

3. 本插件是否包含广告，如包含需详细说明广告表达方式、展示频率：
   无

https://ext.dcloud.net.cn/plugin?id=822
https://ext.dcloud.net.cn/plugin?id=930

https://uniapp.dcloud.io/uni_modules
