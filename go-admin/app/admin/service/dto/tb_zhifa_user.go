package dto

import (
	"go-admin/app/admin/models"
	"go-admin/common/dto"
	common "go-admin/common/models"
)

type TbZhifaUserGetPageReq struct {
	dto.Pagination `search:"-"`
	Username       string `form:"username"  search:"type:exact;column:username;table:tb_zhifa_user" comment:"用户名"`
	Name           string `form:"name"  search:"type:exact;column:name;table:tb_zhifa_user" comment:"姓名"`
	Department     string `form:"department"  search:"type:exact;column:department;table:tb_zhifa_user" comment:"部门"`
	TbZhifaUserOrder
}

type TbZhifaUserOrder struct {
	Id         string `form:"idOrder"  search:"type:order;column:id;table:tb_zhifa_user"`
	Username   string `form:"usernameOrder"  search:"type:order;column:username;table:tb_zhifa_user"`
	Passwd     string `form:"passwdOrder"  search:"type:order;column:passwd;table:tb_zhifa_user"`
	Name       string `form:"nameOrder"  search:"type:order;column:name;table:tb_zhifa_user"`
	Department string `form:"departmentOrder"  search:"type:order;column:department;table:tb_zhifa_user"`
	CreatedAt  string `form:"createdAtOrder"  search:"type:order;column:created_at;table:tb_zhifa_user"`
	UpdatedAt  string `form:"updatedAtOrder"  search:"type:order;column:updated_at;table:tb_zhifa_user"`
	DeletedAt  string `form:"deletedAtOrder"  search:"type:order;column:deleted_at;table:tb_zhifa_user"`
	CreateBy   string `form:"createByOrder"  search:"type:order;column:create_by;table:tb_zhifa_user"`
	UpdateBy   string `form:"updateByOrder"  search:"type:order;column:update_by;table:tb_zhifa_user"`
}

func (m *TbZhifaUserGetPageReq) GetNeedSearch() interface{} {
	return *m
}

type TbZhifaUserLoginReq struct {
	Username string `json:"username" comment:"用户名"`
	Passwd   string `json:"passwd" comment:"密码"`
}

type TbZhifaUserInsertReq struct {
	Id         int    `json:"-" comment:"主键编码"` // 主键编码
	Username   string `json:"username" comment:"用户名"`
	Passwd     string `json:"passwd" comment:"密码"`
	Name       string `json:"name" comment:"姓名"`
	Department string `json:"department" comment:"部门"`
	common.ControlBy
}

func (s *TbZhifaUserInsertReq) Generate(model *models.TbZhifaUser) {
	if s.Id == 0 {
		model.Model = common.Model{Id: s.Id}
	}
	model.Username = s.Username
	model.Passwd = s.Passwd
	model.Name = s.Name
	model.Department = s.Department
	model.CreateBy = s.CreateBy // 添加这而，需要记录是被谁创建的
}

func (s *TbZhifaUserInsertReq) GetId() interface{} {
	return s.Id
}

type TbZhifaUserUpdateReq struct {
	Id         int    `uri:"id" comment:"主键编码"` // 主键编码
	Username   string `json:"username" comment:"用户名"`
	Passwd     string `json:"passwd" comment:"密码"`
	Name       string `json:"name" comment:"姓名"`
	Department string `json:"department" comment:"部门"`
	common.ControlBy
}

func (s *TbZhifaUserUpdateReq) Generate(model *models.TbZhifaUser) {
	if s.Id == 0 {
		model.Model = common.Model{Id: s.Id}
	}
	model.Username = s.Username
	model.Passwd = s.Passwd
	model.Name = s.Name
	model.Department = s.Department
	model.UpdateBy = s.UpdateBy // 添加这而，需要记录是被谁更新的
}

func (s *TbZhifaUserUpdateReq) GetId() interface{} {
	return s.Id
}

// TbZhifaUserGetReq 功能获取请求参数
type TbZhifaUserGetReq struct {
	Id int `uri:"id"`
}

func (s *TbZhifaUserGetReq) GetId() interface{} {
	return s.Id
}

// TbZhifaUserDeleteReq 功能删除请求参数
type TbZhifaUserDeleteReq struct {
	Ids []int `json:"ids"`
}

func (s *TbZhifaUserDeleteReq) GetId() interface{} {
	return s.Ids
}
