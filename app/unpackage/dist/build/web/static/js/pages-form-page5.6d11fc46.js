(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-form-page5"],{2881:function(e,t,n){"use strict";var a=n("5502"),i=n.n(a);i.a},"2ec5b":function(e,t,n){"use strict";e.exports=function(e,t){return t||(t={}),e=e&&e.__esModule?e.default:e,"string"!==typeof e?e:(/^['"].*['"]$/.test(e)&&(e=e.slice(1,-1)),t.hash&&(e+=t.hash),/["'() \t\n]/.test(e)||t.needQuotes?'"'.concat(e.replace(/"/g,'\\"').replace(/\n/g,"\\n"),'"'):e)}},5502:function(e,t,n){var a=n("6b5c");a.__esModule&&(a=a.default),"string"===typeof a&&(a=[[e.i,a,""]]),a.locals&&(e.exports=a.locals);var i=n("967d").default;i("18909027",a,!0,{sourceMap:!1,shadowMode:!1})},"6b5c":function(e,t,n){var a=n("c86c"),i=n("2ec5b"),o=n("7ad3");t=a(!1);var r=i(o);t.push([e.i,'@charset "UTF-8";\n/**\n * 这里是uni-app内置的常用样式变量\n *\n * uni-app 官方扩展插件及插件市场（https://ext.dcloud.net.cn）上很多三方插件均使用了这些样式变量\n * 如果你是插件开发者，建议你使用scss预处理，并在插件代码中直接使用这些变量（无需 import 这个文件），方便用户通过搭积木的方式开发整体风格一致的App\n *\n */\n/**\n * 如果你是App开发者（插件使用者），你可以通过修改这些变量来定制自己的插件主题，实现自定义主题功能\n *\n * 如果你的项目同样使用了scss预处理，你也可以直接在你的 scss 代码中使用如下变量，同时无需 import 这个文件\n */\n/* 颜色变量 */\n/* uni.scss */\n/* 行为相关颜色 */\n/* 文字基本颜色 */\n/* 背景颜色 */\n/* 边框颜色 */\n/* 尺寸变量 */\n/* 文字尺寸 */\n/* 图片尺寸 */\n/* Border Radius */\n/* 水平间距 */\n/* 垂直间距 */\n/* 透明度 */\n/* 文章场景相关 */*[data-v-4ea4f29b]{box-sizing:border-box}html[data-v-4ea4f29b], body[data-v-4ea4f29b]{overflow-y:scroll;height:100%}uni-page-body[data-v-4ea4f29b]{background-image:url('+r+");background-size:cover}body.?%PAGE?%[data-v-4ea4f29b]{background-image:url("+r+");background-size:cover}.continer[data-v-4ea4f29b]{width:100%;padding:%?50?% %?26?%}.btns[data-v-4ea4f29b]{display:flex;justify-content:space-around;margin-top:%?40?%}.btns .btn1[data-v-4ea4f29b]{border-radius:%?20?%;width:%?200?%;height:%?60?%;line-height:%?60?%;background:#0047ff;color:#0047ff;text-align:center;background:#fff;border:%?1?% solid #165dff}.btns .btn2[data-v-4ea4f29b]{border-radius:%?10?%;width:%?300?%;height:%?80?%;text-align:center;line-height:%?80?%;color:#fff;background:#0051ff;border:%?1?% solid #165dff}.end[data-v-4ea4f29b]{position:fixed;bottom:%?20?%;width:100%;height:%?27?%;font-weight:400;font-size:%?24?%;color:rgba(61,61,61,.65);line-height:%?27?%;text-align:center;font-style:normal;text-transform:none}.notice[data-v-4ea4f29b]{width:%?698?%;background:linear-gradient(319deg,#6f9fff,#f0f5ff);border-radius:%?10?%;border:%?2?% solid #fff;display:flex;justify-content:left;align-items:center;flex-direction:column}.notice .title[data-v-4ea4f29b]{width:100%;text-align:center;font-weight:500;margin-top:%?16?%;font-size:%?31?%;color:#0051ff;font-style:normal;text-transform:none}.notice .notice2[data-v-4ea4f29b]{margin-top:%?10?%;width:%?667?%;background:#fff;border-radius:%?15?% %?15?% %?15?% %?15?%;padding:%?23?% %?23?%;min-height:%?300?%;margin-bottom:%?24?%}.notice .notice2 .text[data-v-4ea4f29b]{width:%?621?%;font-size:%?30?%;text-indent:2em;line-height:%?46?%;text-align:left;font-style:normal;text-transform:none}.notice .flex-row[data-v-4ea4f29b]{display:flex;justify-content:space-between}.notice .flex-row .obj[data-v-4ea4f29b]{width:%?324?%;height:%?194?%;background:#f4f7ff;box-shadow:inset %?0?% 4 %?15?% %?0?% #fff;border-radius:%?15?% %?15?% %?15?% %?15?%}",""]),e.exports=t},"6caf":function(e,t,n){"use strict";n.d(t,"b",(function(){return a})),n.d(t,"c",(function(){return i})),n.d(t,"a",(function(){}));var a=function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("v-uni-view",{staticClass:"continer"},[n("v-uni-view",{staticClass:"notice"},[n("v-uni-view",{staticClass:"title"},[e._v("信息已提交")]),n("v-uni-view",{staticClass:"notice2"},[n("v-uni-view",{staticClass:"text"},[e._v(e._s(e.beiantongguotishi))])],1)],1),n("v-uni-view",{staticClass:"btns"},[n("v-uni-view",{staticClass:"btn2",on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.next.apply(void 0,arguments)}}},[n("v-uni-text",[e._v("完成")])],1)],1),n("v-uni-view",{staticClass:"end"},[e._v(e._s(e.end))])],1)},i=[]},"749c":function(e,t,n){"use strict";n.r(t);var a=n("6caf"),i=n("8b39");for(var o in i)["default"].indexOf(o)<0&&function(e){n.d(t,e,(function(){return i[e]}))}(o);n("2881");var r=n("828b"),s=Object(r["a"])(i["default"],a["b"],a["c"],!1,null,"4ea4f29b",null,!1,a["a"],void 0);t["default"]=s.exports},7676:function(e,t,n){"use strict";n("6a54"),n("bf0f"),n("2797"),n("dc8a"),Object.defineProperty(t,"__esModule",{value:!0});var a=n("a41d");Object.keys(a).forEach((function(e){"default"!==e&&"__esModule"!==e&&(e in t&&t[e]===a[e]||Object.defineProperty(t,e,{enumerable:!0,get:function(){return a[e]}}))}));var i=n("b2a3");Object.keys(i).forEach((function(e){"default"!==e&&"__esModule"!==e&&(e in t&&t[e]===i[e]||Object.defineProperty(t,e,{enumerable:!0,get:function(){return i[e]}}))}))},"7ad3":function(e,t,n){e.exports=n.p+"static/page1/bg.png"},"8b39":function(e,t,n){"use strict";n.r(t);var a=n("a685"),i=n.n(a);for(var o in a)["default"].indexOf(o)<0&&function(e){n.d(t,e,(function(){return a[e]}))}(o);t["default"]=i.a},a41d:function(e,t,n){"use strict";n("6a54"),Object.defineProperty(t,"__esModule",{value:!0}),t.gameList=t.TEST_DATA=t.GAME_DATA=void 0;t.TEST_DATA="/game/list";t.gameList="/api/v1/tb-config/key/shouyebiaoti";t.GAME_DATA="/game/data"},a685:function(e,t,n){"use strict";n("6a54");var a=n("f5bd").default;Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var i=a(n("2634")),o=a(n("2fdc")),r=n("7676"),s={data:function(){return{beiantongguotishi:"",end:""}},created:function(){var e=this;return(0,o.default)((0,i.default)().mark((function t(){var n,a,o;return(0,i.default)().wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,e.$http.get(r.getKey+"beiantongguotishi",{});case 2:return a=t.sent,e.beiantongguotishi=null===(n=a.data)||void 0===n?void 0:n.value,t.next=6,e.$http.get(r.getKey+"end",{});case 6:o=t.sent,e.end=o.data.value;case 8:case"end":return t.stop()}}),t)})))()},onShow:function(){},methods:{pre:function(){uni.navigateTo({url:"/pages/form/page4"})},next:function(){uni.navigateTo({url:"/pages/form/page1"})}}};t.default=s},b2a3:function(e,t,n){"use strict";n("6a54"),Object.defineProperty(t,"__esModule",{value:!0}),t.submitApi=t.loginApi=t.getTableByPhone=t.getTableByDesId=t.getKey=t.BASE_URL=void 0;t.BASE_URL="http://101.35.245.54:8100";t.getKey="/api/v1/tb-config/key/";t.submitApi="/api/v1/tb-table/submit";t.getTableByPhone="/api/v1/tb-table/GK15qPn/";t.getTableByDesId="/api/v1/tb-table/HJnq8c/";t.loginApi="/api/v1/tb-zhifa-user/login"}}]);