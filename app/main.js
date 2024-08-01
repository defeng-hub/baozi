import Vue from 'vue'
import App from './App'
import uView from '@/uni_modules/uview-ui'
import { install as http } from '@/uni_modules/gt-axios-request/js_sdk/install.js'

Vue.use(uView)
uni.$u.config.unit = 'rpx'
Vue.use(http)
Vue.config.productionTip = false

App.mpType = 'app'

const app = new Vue({
    ...App
})
app.$mount()
