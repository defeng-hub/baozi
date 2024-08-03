package models

import (

	"go-admin/common/models"

)

type TbZhifaUser struct {
    models.Model
    
    Username string `json:"username" gorm:"type:varchar(255);comment:用户名"` 
    Passwd string `json:"passwd" gorm:"type:varchar(255);comment:密码"` 
    Name string `json:"name" gorm:"type:varchar(255);comment:姓名"` 
    Department string `json:"department" gorm:"type:varchar(255);comment:部门"` 
    models.ModelTime
    models.ControlBy
}

func (TbZhifaUser) TableName() string {
    return "tb_zhifa_user"
}

func (e *TbZhifaUser) Generate() models.ActiveRecord {
	o := *e
	return &o
}

func (e *TbZhifaUser) GetId() interface{} {
	return e.Id
}