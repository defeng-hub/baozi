(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-form-page4"],{"066e":function(e,t,a){"use strict";a.r(t);var n=a("76ce"),o=a("3ac5");for(var i in o)["default"].indexOf(i)<0&&function(e){a.d(t,e,(function(){return o[e]}))}(i);a("5589"),a("512a");var r=a("828b"),s=Object(r["a"])(o["default"],n["b"],n["c"],!1,null,"a67237b4",null,!1,n["a"],void 0);t["default"]=s.exports},"068a":function(e,t,a){var n=a("c86c"),o=a("2ec5b"),i=a("7ad3");t=n(!1);var r=o(i);t.push([e.i,'@charset "UTF-8";\n/**\n * 这里是uni-app内置的常用样式变量\n *\n * uni-app 官方扩展插件及插件市场（https://ext.dcloud.net.cn）上很多三方插件均使用了这些样式变量\n * 如果你是插件开发者，建议你使用scss预处理，并在插件代码中直接使用这些变量（无需 import 这个文件），方便用户通过搭积木的方式开发整体风格一致的App\n *\n */\n/**\n * 如果你是App开发者（插件使用者），你可以通过修改这些变量来定制自己的插件主题，实现自定义主题功能\n *\n * 如果你的项目同样使用了scss预处理，你也可以直接在你的 scss 代码中使用如下变量，同时无需 import 这个文件\n */\n/* 颜色变量 */\n/* uni.scss */\n/* 行为相关颜色 */\n/* 文字基本颜色 */\n/* 背景颜色 */\n/* 边框颜色 */\n/* 尺寸变量 */\n/* 文字尺寸 */\n/* 图片尺寸 */\n/* Border Radius */\n/* 水平间距 */\n/* 垂直间距 */\n/* 透明度 */\n/* 文章场景相关 */*[data-v-a67237b4]{box-sizing:border-box}html[data-v-a67237b4], body[data-v-a67237b4]{overflow-y:scroll;height:100%}uni-page-body[data-v-a67237b4]{background-image:url('+r+");background-size:cover;overflow-y:scroll}body.?%PAGE?%[data-v-a67237b4]{background-image:url("+r+");background-size:cover}.top .title[data-v-a67237b4]{text-align:center;font-size:%?38?%;margin-bottom:%?20?%;font-weight:600}.top .gaozhi[data-v-a67237b4]{word-wrap:break-word}.top .download[data-v-a67237b4]{margin-top:%?20?%;display:flex;justify-content:left}.top .info[data-v-a67237b4]{margin-top:%?20?%}.card[data-v-a67237b4]{margin-top:%?20?%;padding:%?25?% %?32?%;width:94.7vw;background:#fff;border-radius:%?8?%}.card .status[data-v-a67237b4]{font-size:%?28?%;margin-top:%?10?%}.card .title[data-v-a67237b4]{font-weight:600}.card .notice[data-v-a67237b4]{text-indent:1em}.btn[data-v-a67237b4]{padding:%?40?% %?100?%}.btns[data-v-a67237b4]{display:flex;justify-content:space-around;margin-top:%?40?%}.btns .btn1[data-v-a67237b4]{border-radius:%?6?%;width:%?250?%;height:%?80?%;line-height:%?80?%;background:#0047ff;color:#0047ff;text-align:center;background:#fff;border:%?1?% solid #165dff}.btns .btn2[data-v-a67237b4]{border-radius:%?6?%;width:%?250?%;height:%?80?%;text-align:center;line-height:%?80?%;color:#fff;background:#0051ff;border:%?1?% solid #165dff}",""]),e.exports=t},"35d2":function(e,t,a){var n=a("c86c"),o=a("2ec5b"),i=a("7ad3");t=n(!1);var r=o(i);t.push([e.i,"uni-page-body[data-v-a67237b4]{background-image:url("+r+");background-size:cover;background-color:#4274fa}body.?%PAGE?%[data-v-a67237b4]{background-image:url("+r+");background-size:cover;background-color:#4274fa}.continer[data-v-a67237b4]{padding:%?20?% %?20?%;font-size:%?28?%;word-wrap:break-word}",""]),e.exports=t},"3ac5":function(e,t,a){"use strict";a.r(t);var n=a("e5ac"),o=a.n(n);for(var i in n)["default"].indexOf(i)<0&&function(e){a.d(t,e,(function(){return n[e]}))}(i);t["default"]=o.a},"512a":function(e,t,a){"use strict";var n=a("8da5"),o=a.n(n);o.a},5589:function(e,t,a){"use strict";var n=a("7589"),o=a.n(n);o.a},7589:function(e,t,a){var n=a("35d2");n.__esModule&&(n=n.default),"string"===typeof n&&(n=[[e.i,n,""]]),n.locals&&(e.exports=n.locals);var o=a("967d").default;o("688e081f",n,!0,{sourceMap:!1,shadowMode:!1})},"76ce":function(e,t,a){"use strict";a.d(t,"b",(function(){return o})),a.d(t,"c",(function(){return i})),a.d(t,"a",(function(){return n}));var n={"u-Form":a("b55c").default,uFormItem:a("81a9a").default,"u-Input":a("b8d7").default,uButton:a("9f1f").default,uUpload:a("c5de").default},o=function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("v-uni-view",{staticClass:"continer"},[e.status.show?n("v-uni-view",{staticClass:"card"},[n("v-uni-view",{staticClass:"status"},[e._v("审核状态："),""==e.status.status?n("v-uni-text",[e._v("待审核")]):n("v-uni-text",[e._v(e._s(e.status.status))])],1),n("v-uni-view",{staticClass:"status"},[e._v("审核留言："),""==e.status.remark?n("v-uni-text",[e._v("无")]):n("v-uni-text",[e._v(e._s(e.status.remark))])],1)],1):e._e(),n("v-uni-view",{staticClass:"card"},[n("u--form",{ref:"uForm",staticStyle:{width:"670rpx"},attrs:{labelPosition:"left",model:e.model1,rules:e.rules}},[n("u-form-item",{attrs:{labelWidth:200,label:"手机号：",prop:"phone",borderBottom:!0}},[n("u--input",{attrs:{maxlength:11,placeholder:"手机号必填",border:"none"},model:{value:e.model1.phone,callback:function(t){e.$set(e.model1,"phone",t)},expression:"model1.phone"}})],1),n("u-form-item",{attrs:{labelWidth:200,label:"验证码：",prop:"authcode",borderBottom:!0}},[n("u--input",{attrs:{placeholder:"请输入验证码",border:"none"},model:{value:e.model1.authcode,callback:function(t){e.$set(e.model1,"authcode",t)},expression:"model1.authcode"}}),n("template",{slot:"right"},[n("u-button",{staticStyle:{right:"20rpx"},attrs:{disabled:11!=e.model1.phone.length,type:"primary",plain:!0,size:"mini"}},[e._v("获取验证码")])],1)],2),n("v-uni-view",{staticClass:"title",staticStyle:{"margin-top":"20rpx"}},[e._v("一、基本信息上传")]),n("u-form-item",{attrs:{labelWidth:200,label:"作业面积：",prop:"zuoyemianji",borderBottom:!0}},[n("u--input",{attrs:{border:"none"},model:{value:e.model1.zuoyemianji,callback:function(t){e.$set(e.model1,"zuoyemianji",t)},expression:"model1.zuoyemianji"}})],1),n("u-form-item",{attrs:{labelWidth:200,label:"作业地址：",prop:"zuoyedizhi",borderBottom:!0}},[n("u--input",{attrs:{border:"none"},model:{value:e.model1.zuoyedizhi,callback:function(t){e.$set(e.model1,"zuoyedizhi",t)},expression:"model1.zuoyedizhi"}})],1),n("u-form-item",{attrs:{labelWidth:200,label:"所属社区：",prop:"suoshushequ",borderBottom:!0}},[n("u--input",{attrs:{border:"none"},model:{value:e.model1.suoshushequ,callback:function(t){e.$set(e.model1,"suoshushequ",t)},expression:"model1.suoshushequ"}})],1),n("u-form-item",{attrs:{labelWidth:200,label:"发包方（甲方）名称：",prop:"fabaofang.name",borderBottom:!0}},[n("u--input",{attrs:{border:"none"},model:{value:e.model1.fabaofang.name,callback:function(t){e.$set(e.model1.fabaofang,"name",t)},expression:"model1.fabaofang.name"}})],1),n("u-form-item",{attrs:{labelWidth:200,label:"联系人：",prop:"fabaofang.user",borderBottom:!0}},[n("u--input",{attrs:{border:"none"},model:{value:e.model1.fabaofang.user,callback:function(t){e.$set(e.model1.fabaofang,"user",t)},expression:"model1.fabaofang.user"}})],1),n("u-form-item",{attrs:{labelWidth:200,label:"联系方式：",prop:"fabaofang.phone",borderBottom:!0}},[n("u--input",{attrs:{border:"none"},model:{value:e.model1.fabaofang.phone,callback:function(t){e.$set(e.model1.fabaofang,"phone",t)},expression:"model1.fabaofang.phone"}})],1),n("u-form-item",{attrs:{labelWidth:200,label:"施工方（乙方）公司名称：",prop:"shigongfang.name",borderBottom:!0}},[n("u--input",{attrs:{border:"none"},model:{value:e.model1.shigongfang.name,callback:function(t){e.$set(e.model1.shigongfang,"name",t)},expression:"model1.shigongfang.name"}})],1),n("u-form-item",{attrs:{labelWidth:200,label:"项目负责人：",prop:"shigongfang.user",borderBottom:!0}},[n("u--input",{attrs:{border:"none"},model:{value:e.model1.shigongfang.user,callback:function(t){e.$set(e.model1.shigongfang,"user",t)},expression:"model1.shigongfang.user"}})],1),n("u-form-item",{attrs:{labelWidth:200,label:"联系方式：",prop:"shigongfang.phone",borderBottom:!0}},[n("u--input",{attrs:{border:"none"},model:{value:e.model1.shigongfang.phone,callback:function(t){e.$set(e.model1.shigongfang,"phone",t)},expression:"model1.shigongfang.phone"}})],1),n("v-uni-view",{staticClass:"title",staticStyle:{"margin-top":"30rpx"}},[e._v("二、资质上传（均须提供复印件并加盖公章）")]),n("u-form-item",{attrs:{labelWidth:200,label:"营业执照：",prop:"yingyezhizhao",borderBottom:!0}},[n("u-upload",{attrs:{accept:"file",width:"200",height:"200",fileList:e.model1.yingyezhizhao,maxCount:1},on:{afterRead:function(t){arguments[0]=t=e.$handleEvent(t),e.afterRead(t,"yingyezhizhao")},delete:function(t){arguments[0]=t=e.$handleEvent(t),e.deletePic("yingyezhizhao")}}},[n("v-uni-image",{staticStyle:{width:"250rpx",height:"150px"},attrs:{src:a("e1fd"),mode:"widthFix"}})],1)],1),n("u-form-item",{attrs:{labelWidth:200,label:"法人身份证：",prop:"farenId",borderBottom:!0}},[n("u-upload",{attrs:{accept:"file",fileList:e.model1.farenId,maxCount:1,width:"250",height:"150"},on:{afterRead:function(t){arguments[0]=t=e.$handleEvent(t),e.afterRead(t,"farenId")},delete:function(t){arguments[0]=t=e.$handleEvent(t),e.deletePic("farenId")}}},[n("v-uni-image",{staticStyle:{width:"250rpx",height:"150px"},attrs:{src:a("8a49"),mode:"widthFix"}})],1)],1),n("u-form-item",{attrs:{labelWidth:200,label:"建筑企业资质安全生产许可证：",prop:"anquanxvkezheng",borderBottom:!0}},[n("u-upload",{attrs:{accept:"file",width:"200",height:"200",fileList:e.model1.anquanxvkezheng,maxCount:1},on:{afterRead:function(t){arguments[0]=t=e.$handleEvent(t),e.afterRead(t,"anquanxvkezheng")},delete:function(t){arguments[0]=t=e.$handleEvent(t),e.deletePic("anquanxvkezheng")}}},[n("v-uni-image",{staticStyle:{width:"250rpx",height:"150px"},attrs:{src:a("e1fd"),mode:"widthFix"}})],1)],1),n("u-form-item",{attrs:{labelWidth:200,label:"授权委托书：",prop:"shouquanweituozhu",borderBottom:!0}},[n("u-upload",{attrs:{accept:"file",width:"200",height:"200",fileList:e.model1.shouquanweituozhu,maxCount:1},on:{afterRead:function(t){arguments[0]=t=e.$handleEvent(t),e.afterRead(t,"shouquanweituozhu")},delete:function(t){arguments[0]=t=e.$handleEvent(t),e.deletePic("shouquanweituozhu")}}},[n("v-uni-image",{staticStyle:{width:"250rpx",height:"150px"},attrs:{src:a("e1fd"),mode:"widthFix"}})],1)],1),n("u-form-item",{attrs:{labelWidth:200,label:"项目负责人身份证：",prop:"fuzerenId",borderBottom:!0}},[n("u-upload",{attrs:{accept:"file",fileList:e.model1.fuzerenId,maxCount:1,width:"250",height:"150"},on:{afterRead:function(t){arguments[0]=t=e.$handleEvent(t),e.afterRead(t,"fuzerenId")},delete:function(t){arguments[0]=t=e.$handleEvent(t),e.deletePic("fuzerenId")}}},[n("v-uni-image",{staticStyle:{width:"250rpx",height:"150px"},attrs:{st:!0,src:"https://cdn.uviewui.com/uview/demo/upload/positive.png",mode:"widthFix"}})],1)],1),n("u-form-item",{attrs:{labelWidth:200,label:"甲乙双方施工合同：",prop:"jiayishuangfangshigonghetong",borderBottom:!0}},[n("u-upload",{attrs:{accept:"file",width:"200",height:"200",fileList:e.model1.jiayishuangfangshigonghetong,maxCount:1},on:{afterRead:function(t){arguments[0]=t=e.$handleEvent(t),e.afterRead(t,"jiayishuangfangshigonghetong")},delete:function(t){arguments[0]=t=e.$handleEvent(t),e.deletePic("jiayishuangfangshigonghetong")}}},[n("v-uni-image",{staticStyle:{width:"250rpx",height:"150px"},attrs:{src:a("e1fd"),mode:"widthFix"}})],1)],1),n("u-form-item",{attrs:{labelWidth:200,label:"安全生产责任保险：",prop:"anquanshengchanzerenbaoxian",borderBottom:!0}},[n("u-upload",{attrs:{accept:"file",width:"200",height:"200",fileList:e.model1.anquanshengchanzerenbaoxian,maxCount:1},on:{afterRead:function(t){arguments[0]=t=e.$handleEvent(t),e.afterRead(t,"anquanshengchanzerenbaoxian")},delete:function(t){arguments[0]=t=e.$handleEvent(t),e.deletePic("anquanshengchanzerenbaoxian")}}},[n("v-uni-image",{staticStyle:{width:"250rpx",height:"150px"},attrs:{src:a("e1fd"),mode:"widthFix"}})],1)],1),n("v-uni-view",{staticClass:"title",staticStyle:{"margin-top":"30rpx"}},[e._v("三、注意事项")]),n("v-uni-view",{staticClass:"notice",staticStyle:{"margin-top":"10rpx"}},[e._v("限额以下施工备案全过程免费，不收取任何费用！\n\t\t\t\t施工备案只验证施工单位资质，不具备法定审批属性，不能代表施工过程中其他安全管理是否合格。\n\t\t\t\t其他相关施工过程中的管理内容，还需相关部门按照法定职责进行检查。")])],1)],1),0==e.status.show?n("v-uni-view",{staticClass:"btns"},[n("v-uni-view",{staticClass:"btn1",on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.pre.apply(void 0,arguments)}}},[n("v-uni-text",[e._v("上一页")])],1),n("v-uni-view",{staticClass:"btn2",on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.submit.apply(void 0,arguments)}}},[n("v-uni-text",[e._v("提交审核")])],1)],1):e._e(),1==e.status.show&&"审核未通过"==e.status.status?n("v-uni-view",{staticClass:"btn"},[n("u-button",{attrs:{iconColor:"#003eff",color:"#003eff",type:"primary",text:"重新提交"},on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.submit.apply(void 0,arguments)}}})],1):e._e()],1)},i=[]},"8a49":function(e,t,a){e.exports=a.p+"static/page4/positive.png"},"8da5":function(e,t,a){var n=a("068a");n.__esModule&&(n=n.default),"string"===typeof n&&(n=[[e.i,n,""]]),n.locals&&(e.exports=n.locals);var o=a("967d").default;o("5d65ee55",n,!0,{sourceMap:!1,shadowMode:!1})},e1fd:function(e,t,a){e.exports=a.p+"static/page4/positive4.png"},e5ac:function(e,t,a){"use strict";a("6a54");var n=a("f5bd").default;Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var o=n(a("9b1b")),i=n(a("2634")),r=n(a("2fdc"));a("dd2b"),a("aa9c"),a("bf0f");var s=a("7676"),u={data:function(){return{status:{status:"",remark:"",show:!1},model1:{phone:"",zuoyemianji:"测试",zuoyedizhi:"",suoshushequ:"",fabaofang:{name:"",user:"",phone:""},shigongfang:{name:"",user:"",phone:""},yingyezhizhao:[],farenId:[],anquanxvkezheng:[],shouquanweituozhu:[],fuzerenId:[],jiayishuangfangshigonghetong:[],anquanshengchanzerenbaoxian:[]},rules:{phone:{type:"string",required:!0,max:11,min:11,message:"手机号不符合要求",trigger:["blur","change"]},zuoyemianji:{type:"string",required:!0,message:"请填写作业面积",trigger:["blur","change"]},zuoyedizhi:{type:"string",required:!0,message:"请填写作业地址",trigger:["blur","change"]},suoshushequ:{type:"string",required:!0,message:"请填写所属社区",trigger:["blur","change"]},"fabaofang.name":{type:"string",required:!0,message:"请填写发包方名称",trigger:["blur","change"]},"fabaofang.user":{type:"string",required:!0,message:"请填写发包方负责人",trigger:["blur","change"]},"fabaofang.phone":{type:"string",required:!0,message:"请填写发包方电话",trigger:["blur","change"]},"shigongfang.name":{type:"string",required:!0,message:"请填写施工方公司名称",trigger:["blur","change"]},"shigongfang.user":{type:"string",required:!0,message:"请填写施工方负责人",trigger:["blur","change"]},"shigongfang.phone":{type:"string",required:!0,message:"请填写施工方电话",trigger:["blur","change"]}}}},methods:{pre:function(){uni.navigateTo({url:"/pages/form/page3"})},submit:function(){var e=this;this.$refs.uForm.validate().then((function(t){console.log(e.model1),e.$http.post(s.submitApi,e.model1,{}).then((function(e){console.log(e),0==e.data&&200==e.code?(console.log("提交成功"),uni.navigateTo({url:"/pages/form/page5"})):uni.showToast({icon:"none",title:null===e||void 0===e?void 0:e.msg})}))})).catch((function(e){uni.$u.toast("资料填写不完整")}))},deletePic:function(e){console.log(this.model1["".concat(e)]),this.model1["".concat(e)].splice(e.index,1)},afterRead:function(e,t){var a=this;return(0,r.default)((0,i.default)().mark((function n(){var o;return(0,i.default)().wrap((function(n){while(1)switch(n.prev=n.next){case 0:return console.log(e,t),n.next=3,a.uploadFilePromise(e.file.url);case 3:o=n.sent,console.log(o),a.model1[t].push({url:s.BASE_URL+o.data.path});case 6:case"end":return n.stop()}}),n)})))()},uploadFilePromise:function(e){return new Promise((function(t,a){uni.uploadFile({url:s.BASE_URL+"/api/v1/public/uploadFile",filePath:e,name:"file",formData:{user:"test"},success:function(e){t(JSON.parse(e.data))}})}))}},onReady:function(){this.$refs.uForm.setRules(this.rules)},onLoad:function(e){var t=this;return(0,r.default)((0,i.default)().mark((function a(){var n;return(0,i.default)().wrap((function(a){while(1)switch(a.prev=a.next){case 0:if(!e["HJnq8c"]){a.next=11;break}return console.log(t.model1),a.next=4,t.$http.get(s.getTableByDesId+e["HJnq8c"],{});case 4:n=a.sent,console.log(n),t.status.show=!0,t.status.remark=n.data.data.remark,t.status.status=n.data.data.status,t.model1=(0,o.default)((0,o.default)({},t.model1),n.data.form),console.log(t.model1);case 11:case"end":return a.stop()}}),a)})))()}};t.default=u}}]);