(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-form-page2"],{"043c":function(t,e,n){"use strict";n.r(e);var i=n("1464"),a=n.n(i);for(var o in i)["default"].indexOf(o)<0&&function(t){n.d(e,t,(function(){return i[t]}))}(o);e["default"]=a.a},1464:function(t,e,n){"use strict";n("6a54");var i=n("f5bd").default;Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var a=i(n("2634")),o=i(n("2fdc")),r=n("7676"),s={data:function(){return{resTime:5,notice:"",template1:"",template2:"",end:""}},created:function(){var t=this;return(0,o.default)((0,a.default)().mark((function e(){var n,i,o,s,c,f,d;return(0,a.default)().wrap((function(e){while(1)switch(e.prev=e.next){case 0:return e.next=2,t.$http.get(r.getKey+"notice",{});case 2:return s=e.sent,t.notice=null===(n=s.data)||void 0===n?void 0:n.value,e.next=6,t.$http.get(r.getKey+"template1",{});case 6:return c=e.sent,t.template1=null===(i=c.data)||void 0===i?void 0:i.value,e.next=10,t.$http.get(r.getKey+"template2",{});case 10:return f=e.sent,t.template2=null===(o=f.data)||void 0===o?void 0:o.value,e.next=14,t.$http.get(r.getKey+"end",{});case 14:d=e.sent,t.end=d.data.value;case 16:case"end":return e.stop()}}),e)})))()},onShow:function(){var t=this;setInterval((function(){t.resTime>0&&(t.resTime-=1)}),1e3)},methods:{pre:function(){uni.navigateTo({url:"/pages/form/page1"})},next:function(){this.resTime<=0&&uni.navigateTo({url:"/pages/form/page3"})}}};e.default=s},"2bdf":function(t,e,n){var i=n("4ee9");i.__esModule&&(i=i.default),"string"===typeof i&&(i=[[t.i,i,""]]),i.locals&&(t.exports=i.locals);var a=n("967d").default;a("55b30548",i,!0,{sourceMap:!1,shadowMode:!1})},"2ec5b":function(t,e,n){"use strict";t.exports=function(t,e){return e||(e={}),t=t&&t.__esModule?t.default:t,"string"!==typeof t?t:(/^['"].*['"]$/.test(t)&&(t=t.slice(1,-1)),e.hash&&(t+=e.hash),/["'() \t\n]/.test(t)||e.needQuotes?'"'.concat(t.replace(/"/g,'\\"').replace(/\n/g,"\\n"),'"'):t)}},"4ee9":function(t,e,n){var i=n("c86c"),a=n("2ec5b"),o=n("7ad3");e=i(!1);var r=a(o);e.push([t.i,'@charset "UTF-8";\n/**\n * 这里是uni-app内置的常用样式变量\n *\n * uni-app 官方扩展插件及插件市场（https://ext.dcloud.net.cn）上很多三方插件均使用了这些样式变量\n * 如果你是插件开发者，建议你使用scss预处理，并在插件代码中直接使用这些变量（无需 import 这个文件），方便用户通过搭积木的方式开发整体风格一致的App\n *\n */\n/**\n * 如果你是App开发者（插件使用者），你可以通过修改这些变量来定制自己的插件主题，实现自定义主题功能\n *\n * 如果你的项目同样使用了scss预处理，你也可以直接在你的 scss 代码中使用如下变量，同时无需 import 这个文件\n */\n/* 颜色变量 */\n/* uni.scss */\n/* 行为相关颜色 */\n/* 文字基本颜色 */\n/* 背景颜色 */\n/* 边框颜色 */\n/* 尺寸变量 */\n/* 文字尺寸 */\n/* 图片尺寸 */\n/* Border Radius */\n/* 水平间距 */\n/* 垂直间距 */\n/* 透明度 */\n/* 文章场景相关 */*[data-v-70e4f282]{box-sizing:border-box}html[data-v-70e4f282], body[data-v-70e4f282]{overflow-y:scroll;height:100%}uni-page-body[data-v-70e4f282]{background-image:url('+r+");background-size:cover}body.?%PAGE?%[data-v-70e4f282]{background-image:url("+r+");background-size:cover}.continer[data-v-70e4f282]{width:100%;padding:%?50?% %?26?%}.btns[data-v-70e4f282]{display:flex;justify-content:space-around;margin-top:%?40?%}.btns .btn1[data-v-70e4f282]{border-radius:%?6?%;width:%?200?%;height:%?70?%;line-height:%?70?%;background:#0047ff;color:#0047ff;text-align:center;background:#fff;border:%?1?% solid #165dff}.btns .btn2[data-v-70e4f282]{border-radius:%?6?%;width:%?200?%;height:%?70?%;text-align:center;line-height:%?70?%;color:#fff;background:#0051ff;border:%?1?% solid #165dff}.end[data-v-70e4f282]{position:fixed;bottom:%?20?%;width:100%;height:%?27?%;font-weight:400;font-size:%?24?%;color:rgba(61,61,61,.65);line-height:%?27?%;text-align:center;font-style:normal;text-transform:none}.notice[data-v-70e4f282]{width:%?698?%;background:linear-gradient(319deg,#6f9fff,#f0f5ff);border-radius:%?10?%;border:%?2?% solid #fff;display:flex;justify-content:left;align-items:center;flex-direction:column}.notice .title[data-v-70e4f282]{width:100%;text-align:left;font-weight:500;margin-top:%?16?%;margin-left:%?30?%;font-size:%?31?%;color:#0051ff;font-style:normal;text-transform:none}.notice .notice2[data-v-70e4f282]{margin-top:%?10?%;width:%?667?%;background:#fff;border-radius:%?15?% %?15?% %?15?% %?15?%;padding:%?23?% %?23?%;margin-bottom:%?24?%}.notice .notice2 .text[data-v-70e4f282]{width:%?621?%;min-height:%?577?%;font-weight:400;font-size:%?27?%;color:rgba(61,61,61,.85);line-height:%?46?%;text-align:left;font-style:normal;text-transform:none}.notice .flex-row[data-v-70e4f282]{display:flex;justify-content:space-between}.notice .flex-row .obj[data-v-70e4f282]{width:%?324?%;height:%?194?%;background:#f4f7ff;box-shadow:inset %?0?% 4 %?15?% %?0?% #fff;border-radius:%?15?% %?15?% %?15?% %?15?%}",""]),t.exports=e},7676:function(t,e,n){"use strict";n("6a54"),n("bf0f"),n("2797"),n("dc8a"),Object.defineProperty(e,"__esModule",{value:!0});var i=n("a41d");Object.keys(i).forEach((function(t){"default"!==t&&"__esModule"!==t&&(t in e&&e[t]===i[t]||Object.defineProperty(e,t,{enumerable:!0,get:function(){return i[t]}}))}));var a=n("b2a3");Object.keys(a).forEach((function(t){"default"!==t&&"__esModule"!==t&&(t in e&&e[t]===a[t]||Object.defineProperty(e,t,{enumerable:!0,get:function(){return a[t]}}))}))},"7ad3":function(t,e,n){t.exports=n.p+"static/page1/bg.png"},a41d:function(t,e,n){"use strict";n("6a54"),Object.defineProperty(e,"__esModule",{value:!0}),e.gameList=e.TEST_DATA=e.GAME_DATA=void 0;e.TEST_DATA="/game/list";e.gameList="/api/v1/tb-config/key/shouyebiaoti";e.GAME_DATA="/game/data"},b2a3:function(t,e,n){"use strict";n("6a54"),Object.defineProperty(e,"__esModule",{value:!0}),e.submitApi=e.loginApi=e.getTableByPhone=e.getTableByDesId=e.getKey=e.BASE_URL=void 0;e.BASE_URL="http://101.35.245.54:8100";e.getKey="/api/v1/tb-config/key/";e.submitApi="/api/v1/tb-table/submit";e.getTableByPhone="/api/v1/tb-table/GK15qPn/";e.getTableByDesId="/api/v1/tb-table/HJnq8c/";e.loginApi="/api/v1/tb-zhifa-user/login"},bf80:function(t,e,n){"use strict";n.r(e);var i=n("ec67"),a=n("043c");for(var o in a)["default"].indexOf(o)<0&&function(t){n.d(e,t,(function(){return a[t]}))}(o);n("c881");var r=n("828b"),s=Object(r["a"])(a["default"],i["b"],i["c"],!1,null,"70e4f282",null,!1,i["a"],void 0);e["default"]=s.exports},c881:function(t,e,n){"use strict";var i=n("2bdf"),a=n.n(i);a.a},ec67:function(t,e,n){"use strict";n.d(e,"b",(function(){return i})),n.d(e,"c",(function(){return a})),n.d(e,"a",(function(){}));var i=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("v-uni-view",{staticClass:"continer"},[n("v-uni-view",{staticClass:"notice"},[n("v-uni-view",{staticClass:"title"},[t._v("备案告知")]),n("v-uni-view",{staticClass:"notice2"},[n("v-uni-view",{staticClass:"text"},[t._v(t._s(t.notice))])],1)],1),n("v-uni-view",{staticClass:"notice",staticStyle:{"margin-top":"30rpx"}},[n("v-uni-view",{staticClass:"title"},[t._v("模板下载")]),n("v-uni-view",{staticClass:"notice2"},[n("v-uni-view",{staticClass:"flex-row"},[n("v-uni-view",{staticClass:"obj"},[n("a",{staticStyle:{"margin-left":"10rpx","text-decoration":"none"},attrs:{target:"_blank",href:t.template1}},[t._v("①授权委托书")])]),n("v-uni-view",{staticClass:"obj",staticStyle:{"margin-left":"20rpx"}},[n("a",{staticStyle:{"margin-left":"10rpx","text-decoration":"none"},attrs:{target:"_blank",href:t.template2}},[t._v("②施工合同模板")])])],1)],1)],1),n("v-uni-view",{staticClass:"btns"},[n("v-uni-view",{staticClass:"btn1",on:{click:function(e){arguments[0]=e=t.$handleEvent(e),t.pre.apply(void 0,arguments)}}},[n("v-uni-text",[t._v("上一页")])],1),n("v-uni-view",{staticClass:"btn2",on:{click:function(e){arguments[0]=e=t.$handleEvent(e),t.next.apply(void 0,arguments)}}},[t.resTime>0?n("v-uni-text",[t._v(t._s(t.resTime)+"秒")]):n("v-uni-text",[t._v("下一页")])],1)],1),n("v-uni-view",{staticClass:"end"},[t._v(t._s(t.end))])],1)},a=[]}}]);