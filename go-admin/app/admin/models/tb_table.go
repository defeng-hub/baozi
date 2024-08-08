package models

import (
	"go-admin/common/models"
)

type TbTable struct {
	models.Model

	Phone                        string `json:"phone" gorm:"type:varchar(255);comment:手机号"`
	Zuoyemianji                  string `json:"zuoyemianji" gorm:"type:varchar(255);comment:作业面积"`
	Zuoyedizhi                   string `json:"zuoyedizhi" gorm:"type:longtext;comment:作业地址"`
	Zuoyeneirong                 string `json:"zuoyeneirong" gorm:"type:longtext;comment:作业内容"`
	Zuoyeshijian                 string `json:"zuoyeshijian" gorm:"type:varchar(255);comment:作业时间"`
	Shigongjine                  string `json:"shigongjine" gorm:"type:varchar(255);comment:施工金额"`
	Suoshushequ                  string `json:"suoshushequ" gorm:"type:longtext;comment:所属社区"`
	FabaofangName                string `json:"fabaofangName" gorm:"type:longtext;comment:发包方名称"`
	FabaofangUser                string `json:"fabaofangUser" gorm:"type:longtext;comment:发包方联系人"`
	FabaofangPhone               string `json:"fabaofangPhone" gorm:"type:longtext;comment:发包方联系方式"`
	ShigongfangName              string `json:"shigongfangName" gorm:"type:longtext;comment:施工方名称"`
	ShigongfangUser              string `json:"shigongfangUser" gorm:"type:longtext;comment:施工方项目负责人"`
	ShigongfangPhone             string `json:"shigongfangPhone" gorm:"type:longtext;comment:施工方联系方式"`
	Shifoushejitezhongzuoye      string `json:"shifoushejitezhongzuoye" gorm:"type:longtext;comment:是否涉及特种作业"`
	Shifoushejidonghuozuoye      string `json:"shifoushejidonghuozuoye" gorm:"type:longtext;comment:是否涉及动火作业"`
	Yingyezhizhao                string `json:"yingyezhizhao" gorm:"type:longtext;comment:营业执照"`
	Farenid                      string `json:"farenid" gorm:"type:longtext;comment:法人身份证号"`
	Jianzhuqiyezizhi             string `json:"jianzhuqiyezizhi" gorm:"type:longtext;comment:建筑企业资质"`
	Anquanxvkezheng              string `json:"anquanxvkezheng" gorm:"type:longtext;comment:建筑企业资质安全生产许可证"`
	Shouquanweituozhu            string `json:"shouquanweituozhu" gorm:"type:longtext;comment:授权委托书"`
	Fuzerenid                    string `json:"fuzerenid" gorm:"type:longtext;comment:项目负责人身份证"`
	Jiayishuangfangshigonghetong string `json:"jiayishuangfangshigonghetong" gorm:"type:longtext;comment:甲乙双方施工合同"`
	Anquanshengchanzerenbaoxian  string `json:"anquanshengchanzerenbaoxian" gorm:"type:longtext;comment:安全生产责任保险"`
	Tezhongzuoyezheng            string `json:"tezhongzuoyezheng" gorm:"type:longtext;comment:特种作业证"`
	WorkingDate                  string `json:"workingDate" gorm:"type:varchar(255);comment:施工日期"`
	WorkingStatus                string `json:"workingStatus" gorm:"type:varchar(255);comment:施工状态"`
	Status                       string `json:"status" gorm:"type:longtext;comment:审核状态"`
	Remark                       string `json:"remark" gorm:"type:longtext;comment:备注"`
	models.ModelTime
	models.ControlBy
}
type TbTableMini struct {
	Id     string `json:"id"`
	Phone  string `json:"phone" gorm:"type:varchar(255);comment:手机号"`
	Status string `json:"status" gorm:"type:longtext;comment:审核状态"`
	Remark string `json:"remark" gorm:"type:longtext;comment:备注"`
	models.ModelTime
	models.ControlBy
}

func (TbTable) TableName() string {
	return "tb_table"
}

func (e *TbTable) Generate() models.ActiveRecord {
	o := *e
	return &o
}

func (e *TbTable) GetId() interface{} {
	return e.Id
}
