package dto

import (
	"go-admin/app/admin/models"
	"go-admin/common/dto"
	common "go-admin/common/models"
)

type TbZhifajianchaGetPageReq struct {
	dto.Pagination `search:"-"`
	Pid            string `form:"pid"  search:"type:exact;column:pid;table:tb_zhifajiancha" comment:"项目id"`
	File           string `form:"file"  search:"type:exact;column:file;table:tb_zhifajiancha" comment:"照片或视频"`
	User           string `form:"user"  search:"type:exact;column:user;table:tb_zhifajiancha" comment:"上传人"`
	Department     string `form:"department"  search:"type:exact;column:department;table:tb_zhifajiancha" comment:"所属部门"`
	TbZhifajianchaOrder
}

type TbZhifajianchaOrder struct {
	Id         string `form:"idOrder"  search:"type:order;column:id;table:tb_zhifajiancha"`
	Pid        string `form:"pidOrder"  search:"type:order;column:pid;table:tb_zhifajiancha"`
	File       string `form:"fileOrder"  search:"type:order;column:file;table:tb_zhifajiancha"`
	File2      string `form:"file2Order"  search:"type:order;column:file2;table:tb_zhifajiancha"`
	Text       string `form:"textOrder"  search:"type:order;column:text;table:tb_zhifajiancha"`
	Text2      string `form:"text2Order"  search:"type:order;column:text2;table:tb_zhifajiancha"`
	User       string `form:"userOrder"  search:"type:order;column:user;table:tb_zhifajiancha"`
	Department string `form:"departmentOrder"  search:"type:order;column:department;table:tb_zhifajiancha"`
	CreatedAt  string `form:"createdAtOrder"  search:"type:order;column:created_at;table:tb_zhifajiancha"`
	UpdatedAt  string `form:"updatedAtOrder"  search:"type:order;column:updated_at;table:tb_zhifajiancha"`
	DeletedAt  string `form:"deletedAtOrder"  search:"type:order;column:deleted_at;table:tb_zhifajiancha"`
	CreateBy   string `form:"createByOrder"  search:"type:order;column:create_by;table:tb_zhifajiancha"`
	UpdateBy   string `form:"updateByOrder"  search:"type:order;column:update_by;table:tb_zhifajiancha"`
}

func (m *TbZhifajianchaGetPageReq) GetNeedSearch() interface{} {
	return *m
}

type TbZhifajianchaInsertReq struct {
	Id         int    `json:"-" comment:"主键编码"` // 主键编码
	Pid        string `json:"pid" comment:"项目id"`
	File       string `json:"file" comment:"照片或视频"`
	File2      string `json:"file2" comment:"检查单"`
	Text       string `json:"text" comment:"检查情况"`
	Text2      string `json:"text2" comment:"是否新增违法建设"`
	User       string `json:"user" comment:"上传人"`
	Department string `json:"department" comment:"所属部门"`
	common.ControlBy
}

func (s *TbZhifajianchaInsertReq) Generate(model *models.TbZhifajiancha) {
	if s.Id == 0 {
		model.Model = common.Model{Id: s.Id}
	}
	model.Pid = s.Pid
	model.File = s.File
	model.File2 = s.File2
	model.Text = s.Text
	model.Text2 = s.Text2
	model.User = s.User
	model.Department = s.Department
	model.CreateBy = s.CreateBy // 添加这而，需要记录是被谁创建的
}

func (s *TbZhifajianchaInsertReq) GetId() interface{} {
	return s.Id
}

type TbZhifajianchaUpdateReq struct {
	Id         int    `uri:"id" comment:"主键编码"` // 主键编码
	Pid        string `json:"pid" comment:"项目id"`
	File       string `json:"file" comment:"照片或视频"`
	File2      string `json:"file2" comment:"检查单"`
	Text       string `json:"text" comment:"检查情况"`
	Text2      string `json:"text2" comment:"是否新增违法建设"`
	User       string `json:"user" comment:"上传人"`
	Department string `json:"department" comment:"所属部门"`
	common.ControlBy
}

func (s *TbZhifajianchaUpdateReq) Generate(model *models.TbZhifajiancha) {
	if s.Id == 0 {
		model.Model = common.Model{Id: s.Id}
	}
	model.Pid = s.Pid
	model.File = s.File
	model.File2 = s.File2
	model.Text = s.Text
	model.Text2 = s.Text2
	model.User = s.User
	model.Department = s.Department
	model.UpdateBy = s.UpdateBy // 添加这而，需要记录是被谁更新的
}

func (s *TbZhifajianchaUpdateReq) GetId() interface{} {
	return s.Id
}

// TbZhifajianchaGetReq 功能获取请求参数
type TbZhifajianchaGetReq struct {
	Id int `uri:"id"`
}

func (s *TbZhifajianchaGetReq) GetId() interface{} {
	return s.Id
}

// TbZhifajianchaDeleteReq 功能删除请求参数
type TbZhifajianchaDeleteReq struct {
	Ids []int `json:"ids"`
}

func (s *TbZhifajianchaDeleteReq) GetId() interface{} {
	return s.Ids
}
