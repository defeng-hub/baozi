package models

import (

	"go-admin/common/models"

)

type TbDemoCopy struct {
    models.Model
    
    Uid string `json:"uid" gorm:"type:varchar(128);comment:名称"` 
    Data1 string `json:"data1" gorm:"type:longtext;comment:data1"` 
    Data2 string `json:"data2" gorm:"type:longtext;comment:data2"` 
    Data3 string `json:"data3" gorm:"type:longtext;comment:data3"` 
    Data4 string `json:"data4" gorm:"type:longtext;comment:data4"` 
    Status string `json:"status" gorm:"type:varchar(128);comment:审批状态"` 
    StatusText string `json:"statusText" gorm:"type:varchar(128);comment:审批备注原因"` 
    models.ModelTime
    models.ControlBy
}

func (TbDemoCopy) TableName() string {
    return "tb_demo_copy"
}

func (e *TbDemoCopy) Generate() models.ActiveRecord {
	o := *e
	return &o
}

func (e *TbDemoCopy) GetId() interface{} {
	return e.Id
}