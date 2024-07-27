package models

import (

	"go-admin/common/models"

)

type TbZhifajiancha struct {
    models.Model
    
    Pid string `json:"pid" gorm:"type:bigint;comment:项目id"` 
    File string `json:"file" gorm:"type:longtext;comment:照片或视频"` 
    User string `json:"user" gorm:"type:longtext;comment:上传人"` 
    Department string `json:"department" gorm:"type:longtext;comment:所属部门"` 
    models.ModelTime
    models.ControlBy
}

func (TbZhifajiancha) TableName() string {
    return "tb_zhifajiancha"
}

func (e *TbZhifajiancha) Generate() models.ActiveRecord {
	o := *e
	return &o
}

func (e *TbZhifajiancha) GetId() interface{} {
	return e.Id
}