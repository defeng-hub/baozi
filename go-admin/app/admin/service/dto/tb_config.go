package dto

import (
	"go-admin/app/admin/models"
	"go-admin/common/dto"
	common "go-admin/common/models"
)

type TbConfigGetPageReq struct {
	dto.Pagination `search:"-"`
	TbConfigOrder
}

type TbConfigOrder struct {
	Id        string `form:"idOrder"  search:"type:order;column:id;table:tb_config"`
	Name      string `form:"nameOrder"  search:"type:order;column:name;table:tb_config"`
	Key       string `form:"keyOrder"  search:"type:order;column:key;table:tb_config"`
	Value     string `form:"valueOrder"  search:"type:order;column:value;table:tb_config"`
	CreatedAt string `form:"createdAtOrder"  search:"type:order;column:created_at;table:tb_config"`
	UpdatedAt string `form:"updatedAtOrder"  search:"type:order;column:updated_at;table:tb_config"`
	DeletedAt string `form:"deletedAtOrder"  search:"type:order;column:deleted_at;table:tb_config"`
	CreateBy  string `form:"createByOrder"  search:"type:order;column:create_by;table:tb_config"`
	UpdateBy  string `form:"updateByOrder"  search:"type:order;column:update_by;table:tb_config"`
}

func (m *TbConfigGetPageReq) GetNeedSearch() interface{} {
	return *m
}

type TbConfigInsertReq struct {
	Id    int    `json:"-" comment:"主键编码"` // 主键编码
	Name  string `json:"name" comment:"名称"`
	Key   string `json:"key" comment:"key"`
	Value string `json:"value" comment:"值"`
	common.ControlBy
}

func (s *TbConfigInsertReq) Generate(model *models.TbConfig) {
	if s.Id == 0 {
		model.Model = common.Model{Id: s.Id}
	}
	model.Name = s.Name
	model.Key = s.Key
	model.Value = s.Value
	model.CreateBy = s.CreateBy // 添加这而，需要记录是被谁创建的
}

func (s *TbConfigInsertReq) GetId() interface{} {
	return s.Id
}

type TbConfigUpdateReq struct {
	Id    int    `uri:"id" comment:"主键编码"` // 主键编码
	Name  string `json:"name" comment:"名称"`
	Key   string `json:"key" comment:"key"`
	Value string `json:"value" comment:"值"`
	common.ControlBy
}

func (s *TbConfigUpdateReq) Generate(model *models.TbConfig) {
	if s.Id == 0 {
		model.Model = common.Model{Id: s.Id}
	}
	model.Name = s.Name
	model.Key = s.Key
	model.Value = s.Value
	model.UpdateBy = s.UpdateBy // 添加这而，需要记录是被谁更新的
}

func (s *TbConfigUpdateReq) GetId() interface{} {
	return s.Id
}

// TbConfigGetReq 功能获取请求参数
type TbConfigGetReq struct {
	Id  int    `uri:"id"`
	Key string `uri:"key"`
}

func (s *TbConfigGetReq) GetId() interface{} {
	return s.Id
}
func (s *TbConfigGetReq) GetKey() interface{} {
	return s.Key
}

// TbConfigDeleteReq 功能删除请求参数
type TbConfigDeleteReq struct {
	Ids []int `json:"ids"`
}

func (s *TbConfigDeleteReq) GetId() interface{} {
	return s.Ids
}
