/*
 * @Author: GaoTang
 * @Company: ShineSoft
 * @Date: 2021-07-19 19:49:01
 * @LastEditors: GaoTang
 * @LastEditTime: 2021-07-19 23:33:27
 * @FilePath: \tpl-uni-https\api\base.js
 * @Email: qq23745038@126.com
 */
import axios from './config'

export const post = (url, data, extend = { showLoading: false, cache: false }) => {
  let defaultConfig = {
    url,
    method: 'POST',
    data: data
  }
  let config = { ...defaultConfig, ...extend }
  if (config.showLoading) {
    uni.showLoading({
      title: '加载中...',
      mask: true
    })
  }
  return axios(config).then(res => {
    if (config.showLoading) uni.hideLoading()
    // 可以统一返回的数据格式 请求状态码为200成功响应返回
    if (res.status == 200) {
      return res.data
    } else {
      // 弹出请求失败的提示信息
      uni.showToast({
        title: res.statusText,
        icon: 'none',
        duration: 2000
      })
    }
  }, err => {
    if (config.showLoading) uni.hideLoading()
    return Promise.reject(err)
  })
}

export const get = (url, data, extend = { showLoading: false, cache: false }) => {
  let defaultConfig = {
    url,
    method: 'GET',
    params: data
  }
  let config = { ...defaultConfig, ...extend }
  if (config.showLoading) {
    uni.showLoading({
      title: '加载中...',
      mask: true
    });
  }
  return axios(config).then(res => {
    if (config.showLoading) uni.hideLoading()
    // 可以统一返回的数据格式 请求状态码为200成功响应返回
    if (res.status == 200) {
      return res.data
    } else {
      // 弹出请求失败的提示信息
      uni.showToast({
        title: res.statusText,
        icon: 'none',
        duration: 2000
      })
    }
  }, err => {
    if (config.showLoading) uni.hideLoading()
    return Promise.reject(err)
  })
}