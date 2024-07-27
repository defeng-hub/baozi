package models

import (

	"go-admin/common/models"

)

type TbConfig struct {
    models.Model
    
    Name string `json:"name" gorm:"type:varchar(2000);comment:名称"` 
    Key string `json:"key" gorm:"type:varchar(2000);comment:key"` 
    Value string `json:"value" gorm:"type:longtext;comment:值"` 
    models.ModelTime
    models.ControlBy
}

func (TbConfig) TableName() string {
    return "tb_config"
}

func (e *TbConfig) Generate() models.ActiveRecord {
	o := *e
	return &o
}

func (e *TbConfig) GetId() interface{} {
	return e.Id
}