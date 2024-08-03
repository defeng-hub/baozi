/*
 * @Author: GaoTang
 * @Company: ShineSoft
 * @Date: 2021-07-19 19:49:01
 * @LastEditors: GaoTang
 * @LastEditTime: 2021-07-19 23:30:58
 * @FilePath: \tpl-uni-https\api\config.js
 * @Email: qq23745038@126.com
 */
import axios from '../node_modules/axios/'
import Cache from './cache'

axios.defaults.timeout = 10000			// 响应时间
axios.defaults.withCredentials = false 					// 让请求头携带参数cookie
axios.defaults.baseURL = 'http://101.35.245.54:8100' 	// 配置接口地址
// axios.defaults.baseURL = 'http://localhost:8100' 	// 配置接口地址
// axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8'  // 配置请求头
axios.defaults.headers.post['Content-Type'] = 'application/json'  // 配置请求头
// axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest'

new Cache(axios, {
  requestInterceptorFn: config => {
    // 自定义请求拦截器
    /* */
    // 需要用Promise将config返回
    return Promise.resolve(config)
  },
  responseInterceptorFn: response => {
    // 自定义响应拦截器，可统一返回的数据格式也可拦截错误
    /* */
    // 需要用Promise将response返回
    return Promise.resolve(response)
  }
})

export default axios