package dto

import (

	"go-admin/app/admin/models"
	"go-admin/common/dto"
	common "go-admin/common/models"
)

type TbDemoCopyGetPageReq struct {
	dto.Pagination     `search:"-"`
    Uid string `form:"uid"  search:"type:exact;column:uid;table:tb_demo_copy" comment:"名称"`
    Status string `form:"status"  search:"type:exact;column:status;table:tb_demo_copy" comment:"审批状态"`
    StatusText string `form:"statusText"  search:"type:contains;column:status_text;table:tb_demo_copy" comment:"审批备注原因"`
    TbDemoCopyOrder
}

type TbDemoCopyOrder struct {
    Id string `form:"idOrder"  search:"type:order;column:id;table:tb_demo_copy"`
    Uid string `form:"uidOrder"  search:"type:order;column:uid;table:tb_demo_copy"`
    Data1 string `form:"data1Order"  search:"type:order;column:data1;table:tb_demo_copy"`
    Data2 string `form:"data2Order"  search:"type:order;column:data2;table:tb_demo_copy"`
    Data3 string `form:"data3Order"  search:"type:order;column:data3;table:tb_demo_copy"`
    Data4 string `form:"data4Order"  search:"type:order;column:data4;table:tb_demo_copy"`
    Status string `form:"statusOrder"  search:"type:order;column:status;table:tb_demo_copy"`
    StatusText string `form:"statusTextOrder"  search:"type:order;column:status_text;table:tb_demo_copy"`
    CreatedAt string `form:"createdAtOrder"  search:"type:order;column:created_at;table:tb_demo_copy"`
    UpdatedAt string `form:"updatedAtOrder"  search:"type:order;column:updated_at;table:tb_demo_copy"`
    DeletedAt string `form:"deletedAtOrder"  search:"type:order;column:deleted_at;table:tb_demo_copy"`
    CreateBy string `form:"createByOrder"  search:"type:order;column:create_by;table:tb_demo_copy"`
    UpdateBy string `form:"updateByOrder"  search:"type:order;column:update_by;table:tb_demo_copy"`
    
}

func (m *TbDemoCopyGetPageReq) GetNeedSearch() interface{} {
	return *m
}

type TbDemoCopyInsertReq struct {
    Id int `json:"-" comment:"主键编码"` // 主键编码
    Uid string `json:"uid" comment:"名称"`
    Data1 string `json:"data1" comment:"data1"`
    Data2 string `json:"data2" comment:"data2"`
    Data3 string `json:"data3" comment:"data3"`
    Data4 string `json:"data4" comment:"data4"`
    Status string `json:"status" comment:"审批状态"`
    StatusText string `json:"statusText" comment:"审批备注原因"`
    common.ControlBy
}

func (s *TbDemoCopyInsertReq) Generate(model *models.TbDemoCopy)  {
    if s.Id == 0 {
        model.Model = common.Model{ Id: s.Id }
    }
    model.Uid = s.Uid
    model.Data1 = s.Data1
    model.Data2 = s.Data2
    model.Data3 = s.Data3
    model.Data4 = s.Data4
    model.Status = s.Status
    model.StatusText = s.StatusText
    model.CreateBy = s.CreateBy // 添加这而，需要记录是被谁创建的
}

func (s *TbDemoCopyInsertReq) GetId() interface{} {
	return s.Id
}

type TbDemoCopyUpdateReq struct {
    Id int `uri:"id" comment:"主键编码"` // 主键编码
    Uid string `json:"uid" comment:"名称"`
    Data1 string `json:"data1" comment:"data1"`
    Data2 string `json:"data2" comment:"data2"`
    Data3 string `json:"data3" comment:"data3"`
    Data4 string `json:"data4" comment:"data4"`
    Status string `json:"status" comment:"审批状态"`
    StatusText string `json:"statusText" comment:"审批备注原因"`
    common.ControlBy
}

func (s *TbDemoCopyUpdateReq) Generate(model *models.TbDemoCopy)  {
    if s.Id == 0 {
        model.Model = common.Model{ Id: s.Id }
    }
    model.Uid = s.Uid
    model.Data1 = s.Data1
    model.Data2 = s.Data2
    model.Data3 = s.Data3
    model.Data4 = s.Data4
    model.Status = s.Status
    model.StatusText = s.StatusText
    model.UpdateBy = s.UpdateBy // 添加这而，需要记录是被谁更新的
}

func (s *TbDemoCopyUpdateReq) GetId() interface{} {
	return s.Id
}

// TbDemoCopyGetReq 功能获取请求参数
type TbDemoCopyGetReq struct {
     Id int `uri:"id"`
}
func (s *TbDemoCopyGetReq) GetId() interface{} {
	return s.Id
}

// TbDemoCopyDeleteReq 功能删除请求参数
type TbDemoCopyDeleteReq struct {
	Ids []int `json:"ids"`
}

func (s *TbDemoCopyDeleteReq) GetId() interface{} {
	return s.Ids
}
