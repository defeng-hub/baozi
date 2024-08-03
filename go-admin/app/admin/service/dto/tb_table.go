package dto

import (
	"encoding/base64"
	"go-admin/app/admin/models"
	"go-admin/common/dto"
	common "go-admin/common/models"
)

type TbTableGetPageReq struct {
	dto.Pagination   `search:"-"`
	Phone            string `form:"phone"  search:"type:contains;column:phone;table:tb_table" comment:"手机号"`
	FabaofangName    string `form:"fabaofangName"  search:"type:contains;column:fabaofang_name;table:tb_table" comment:"发包方名称"`
	FabaofangUser    string `form:"fabaofangUser"  search:"type:contains;column:fabaofang_user;table:tb_table" comment:"发包方联系人"`
	ShigongfangName  string `form:"shigongfangName"  search:"type:contains;column:shigongfang_name;table:tb_table" comment:"施工方名称"`
	ShigongfangUser  string `form:"shigongfangUser"  search:"type:contains;column:shigongfang_user;table:tb_table" comment:"施工方项目负责人"`
	ShigongfangPhone string `form:"shigongfangPhone"  search:"type:exact;column:shigongfang_phone;table:tb_table" comment:"施工方联系方式"`
	Status           string `form:"status"  search:"type:exact;column:status;table:tb_table" comment:"状态"`
	TbTableOrder
}

type TbTableOrder struct {
	Id                           string `form:"idOrder"  search:"type:order;column:id;table:tb_table"`
	Phone                        string `form:"phoneOrder"  search:"type:order;column:phone;table:tb_table"`
	Zuoyemianji                  string `form:"zuoyemianjiOrder"  search:"type:order;column:zuoyemianji;table:tb_table"`
	Zuoyedizhi                   string `form:"zuoyedizhiOrder"  search:"type:order;column:zuoyedizhi;table:tb_table"`
	Suoshushequ                  string `form:"suoshushequOrder"  search:"type:order;column:suoshushequ;table:tb_table"`
	FabaofangName                string `form:"fabaofangNameOrder"  search:"type:order;column:fabaofang_name;table:tb_table"`
	FabaofangUser                string `form:"fabaofangUserOrder"  search:"type:order;column:fabaofang_user;table:tb_table"`
	FabaofangPhone               string `form:"fabaofangPhoneOrder"  search:"type:order;column:fabaofang_phone;table:tb_table"`
	ShigongfangName              string `form:"shigongfangNameOrder"  search:"type:order;column:shigongfang_name;table:tb_table"`
	ShigongfangUser              string `form:"shigongfangUserOrder"  search:"type:order;column:shigongfang_user;table:tb_table"`
	ShigongfangPhone             string `form:"shigongfangPhoneOrder"  search:"type:order;column:shigongfang_phone;table:tb_table"`
	Yingyezhizhao                string `form:"yingyezhizhaoOrder"  search:"type:order;column:yingyezhizhao;table:tb_table"`
	Farenid                      string `form:"farenidOrder"  search:"type:order;column:farenid;table:tb_table"`
	Anquanxvkezheng              string `form:"anquanxvkezhengOrder"  search:"type:order;column:anquanxvkezheng;table:tb_table"`
	Shouquanweituozhu            string `form:"shouquanweituozhuOrder"  search:"type:order;column:shouquanweituozhu;table:tb_table"`
	Fuzerenid                    string `form:"fuzerenidOrder"  search:"type:order;column:fuzerenid;table:tb_table"`
	Jiayishuangfangshigonghetong string `form:"jiayishuangfangshigonghetongOrder"  search:"type:order;column:jiayishuangfangshigonghetong;table:tb_table"`
	Anquanshengchanzerenbaoxian  string `form:"anquanshengchanzerenbaoxianOrder"  search:"type:order;column:anquanshengchanzerenbaoxian;table:tb_table"`
	Tezhongzuoyezheng            string `form:"tezhongzuoyezhengOrder"  search:"type:order;column:tezhongzuoyezheng;table:tb_table"`
	WorkingDate                  string `form:"workingDateOrder"  search:"type:order;column:working_date;table:tb_table"`
	WorkingStatus                string `form:"workingStatusOrder"  search:"type:order;column:working_status;table:tb_table"`
	Status                       string `form:"statusOrder"  search:"type:order;column:status;table:tb_table"`
	Remark                       string `form:"remarkOrder"  search:"type:order;column:remark;table:tb_table"`
	CreatedAt                    string `form:"createdAtOrder"  search:"type:order;column:created_at;table:tb_table"`
	UpdatedAt                    string `form:"updatedAtOrder"  search:"type:order;column:updated_at;table:tb_table"`
	DeletedAt                    string `form:"deletedAtOrder"  search:"type:order;column:deleted_at;table:tb_table"`
	CreateBy                     string `form:"createByOrder"  search:"type:order;column:create_by;table:tb_table"`
	UpdateBy                     string `form:"updateByOrder"  search:"type:order;column:update_by;table:tb_table"`
}

func (m *TbTableGetPageReq) GetNeedSearch() interface{} {
	return *m
}

type TbTableInsertReq struct {
	Id                           int    `json:"-" comment:"主键编码"` // 主键编码
	Phone                        string `json:"phone" comment:"手机号"`
	Zuoyemianji                  string `json:"zuoyemianji" comment:"作业面积"`
	Zuoyedizhi                   string `json:"zuoyedizhi" comment:"作业地址"`
	Suoshushequ                  string `json:"suoshushequ" comment:"所属社区"`
	FabaofangName                string `json:"fabaofangName" comment:"发包方名称"`
	FabaofangUser                string `json:"fabaofangUser" comment:"发包方联系人"`
	FabaofangPhone               string `json:"fabaofangPhone" comment:"发包方联系方式"`
	ShigongfangName              string `json:"shigongfangName" comment:"施工方名称"`
	ShigongfangUser              string `json:"shigongfangUser" comment:"施工方项目负责人"`
	ShigongfangPhone             string `json:"shigongfangPhone" comment:"施工方联系方式"`
	Yingyezhizhao                string `json:"yingyezhizhao" comment:"营业执照"`
	Farenid                      string `json:"farenid" comment:"法人身份证号"`
	Anquanxvkezheng              string `json:"anquanxvkezheng" comment:"建筑企业资质安全生产许可证"`
	Shouquanweituozhu            string `json:"shouquanweituozhu" comment:"授权委托书"`
	Fuzerenid                    string `json:"fuzerenid" comment:"项目负责人身份证"`
	Jiayishuangfangshigonghetong string `json:"jiayishuangfangshigonghetong" comment:"甲乙双方施工合同"`
	Anquanshengchanzerenbaoxian  string `json:"anquanshengchanzerenbaoxian" comment:"安全生产责任保险"`
	Tezhongzuoyezheng            string `json:"tezhongzuoyezheng" comment:"特种作业证"`
	WorkingDate                  string `json:"workingDate" comment:"施工日期"`
	WorkingStatus                string `json:"workingStatus" comment:"施工状态"`
	Status                       string `json:"status" comment:"审核状态"`
	Remark                       string `json:"remark" comment:"备注"`
	common.ControlBy
}

func (s *TbTableInsertReq) Generate(model *models.TbTable) {
	if s.Id == 0 {
		model.Model = common.Model{Id: s.Id}
	}
	model.Phone = s.Phone
	model.Zuoyemianji = s.Zuoyemianji
	model.Zuoyedizhi = s.Zuoyedizhi
	model.Suoshushequ = s.Suoshushequ
	model.FabaofangName = s.FabaofangName
	model.FabaofangUser = s.FabaofangUser
	model.FabaofangPhone = s.FabaofangPhone
	model.ShigongfangName = s.ShigongfangName
	model.ShigongfangUser = s.ShigongfangUser
	model.ShigongfangPhone = s.ShigongfangPhone
	model.Yingyezhizhao = s.Yingyezhizhao
	model.Farenid = s.Farenid
	model.Anquanxvkezheng = s.Anquanxvkezheng
	model.Shouquanweituozhu = s.Shouquanweituozhu
	model.Fuzerenid = s.Fuzerenid
	model.Jiayishuangfangshigonghetong = s.Jiayishuangfangshigonghetong
	model.Anquanshengchanzerenbaoxian = s.Anquanshengchanzerenbaoxian
	model.Tezhongzuoyezheng = s.Tezhongzuoyezheng
	model.WorkingDate = s.WorkingDate
	model.WorkingStatus = s.WorkingStatus
	model.Status = s.Status
	model.Remark = s.Remark
	model.CreateBy = s.CreateBy // 添加这而，需要记录是被谁创建的
}

func (s *TbTableInsertReq) GetId() interface{} {
	return s.Id
}

type TbTableUpdateReq struct {
	Id                           int    `uri:"id" comment:"主键编码"` // 主键编码
	Phone                        string `json:"phone" comment:"手机号"`
	Zuoyemianji                  string `json:"zuoyemianji" comment:"作业面积"`
	Zuoyedizhi                   string `json:"zuoyedizhi" comment:"作业地址"`
	Suoshushequ                  string `json:"suoshushequ" comment:"所属社区"`
	FabaofangName                string `json:"fabaofangName" comment:"发包方名称"`
	FabaofangUser                string `json:"fabaofangUser" comment:"发包方联系人"`
	FabaofangPhone               string `json:"fabaofangPhone" comment:"发包方联系方式"`
	ShigongfangName              string `json:"shigongfangName" comment:"施工方名称"`
	ShigongfangUser              string `json:"shigongfangUser" comment:"施工方项目负责人"`
	ShigongfangPhone             string `json:"shigongfangPhone" comment:"施工方联系方式"`
	Yingyezhizhao                string `json:"yingyezhizhao" comment:"营业执照"`
	Farenid                      string `json:"farenid" comment:"法人身份证号"`
	Anquanxvkezheng              string `json:"anquanxvkezheng" comment:"建筑企业资质安全生产许可证"`
	Shouquanweituozhu            string `json:"shouquanweituozhu" comment:"授权委托书"`
	Fuzerenid                    string `json:"fuzerenid" comment:"项目负责人身份证"`
	Jiayishuangfangshigonghetong string `json:"jiayishuangfangshigonghetong" comment:"甲乙双方施工合同"`
	Anquanshengchanzerenbaoxian  string `json:"anquanshengchanzerenbaoxian" comment:"安全生产责任保险"`
	Tezhongzuoyezheng            string `json:"tezhongzuoyezheng" comment:"特种作业证"`
	WorkingDate                  string `json:"workingDate" comment:"施工日期"`
	WorkingStatus                string `json:"workingStatus" comment:"施工状态"`
	Status                       string `json:"status" comment:"审核状态"`
	Remark                       string `json:"remark" comment:"备注"`
	common.ControlBy
}

func (s *TbTableUpdateReq) Generate(model *models.TbTable) {
	if s.Id == 0 {
		model.Model = common.Model{Id: s.Id}
	}
	model.Phone = s.Phone
	model.Zuoyemianji = s.Zuoyemianji
	model.Zuoyedizhi = s.Zuoyedizhi
	model.Suoshushequ = s.Suoshushequ
	model.FabaofangName = s.FabaofangName
	model.FabaofangUser = s.FabaofangUser
	model.FabaofangPhone = s.FabaofangPhone
	model.ShigongfangName = s.ShigongfangName
	model.ShigongfangUser = s.ShigongfangUser
	model.ShigongfangPhone = s.ShigongfangPhone
	model.Yingyezhizhao = s.Yingyezhizhao
	model.Farenid = s.Farenid
	model.Anquanxvkezheng = s.Anquanxvkezheng
	model.Shouquanweituozhu = s.Shouquanweituozhu
	model.Fuzerenid = s.Fuzerenid
	model.Jiayishuangfangshigonghetong = s.Jiayishuangfangshigonghetong
	model.Anquanshengchanzerenbaoxian = s.Anquanshengchanzerenbaoxian
	model.Tezhongzuoyezheng = s.Tezhongzuoyezheng
	model.WorkingDate = s.WorkingDate
	model.WorkingStatus = s.WorkingStatus
	model.Status = s.Status
	model.Remark = s.Remark
	model.UpdateBy = s.UpdateBy // 添加这而，需要记录是被谁更新的
}

func (s *TbTableUpdateReq) GetId() interface{} {
	return s.Id
}

// TbTableGetReq 功能获取请求参数
type TbTableGetReq struct {
	Id int `uri:"id"`
}

func (s *TbTableGetReq) GetId() interface{} {
	return s.Id
}

type TbTableGetByPhoneReq struct {
	Phone int `uri:"phone"`
}

func (s *TbTableGetByPhoneReq) GetPhone() interface{} {
	return s.Phone
}

type TbTableGetByDesIdReq struct {
	Id string `uri:"id"`
}

func (s *TbTableGetByDesIdReq) GetDesId() interface{} {
	a, _ := base64.StdEncoding.DecodeString(s.Id)
	//v, _ := common2.AesDecrypt(a)
	return a
}

// TbTableDeleteReq 功能删除请求参数
type TbTableDeleteReq struct {
	Ids []int `json:"ids"`
}

func (s *TbTableDeleteReq) GetId() interface{} {
	return s.Ids
}
