package apis

import (
    "fmt"

	"github.com/gin-gonic/gin"
	"github.com/go-admin-team/go-admin-core/sdk/api"
	"github.com/go-admin-team/go-admin-core/sdk/pkg/jwtauth/user"
	_ "github.com/go-admin-team/go-admin-core/sdk/pkg/response"

	"go-admin/app/admin/models"
	"go-admin/app/admin/service"
	"go-admin/app/admin/service/dto"
	"go-admin/common/actions"
)

type TbDemoCopy struct {
	api.Api
}

// GetPage 获取TbDemoCopy列表
// @Summary 获取TbDemoCopy列表
// @Description 获取TbDemoCopy列表
// @Tags TbDemoCopy
// @Param uid query string false "名称"
// @Param status query string false "审批状态"
// @Param statusText query string false "审批备注原因"
// @Param pageSize query int false "页条数"
// @Param pageIndex query int false "页码"
// @Success 200 {object} response.Response{data=response.Page{list=[]models.TbDemoCopy}} "{"code": 200, "data": [...]}"
// @Router /api/v1/tb-demo-copy [get]
// @Security Bearer
func (e TbDemoCopy) GetPage(c *gin.Context) {
    req := dto.TbDemoCopyGetPageReq{}
    s := service.TbDemoCopy{}
    err := e.MakeContext(c).
        MakeOrm().
        Bind(&req).
        MakeService(&s.Service).
        Errors
   	if err != nil {
   		e.Logger.Error(err)
   		e.Error(500, err, err.Error())
   		return
   	}

	p := actions.GetPermissionFromContext(c)
	list := make([]models.TbDemoCopy, 0)
	var count int64

	err = s.GetPage(&req, p, &list, &count)
	if err != nil {
		e.Error(500, err, fmt.Sprintf("获取TbDemoCopy失败，\r\n失败信息 %s", err.Error()))
        return
	}

	e.PageOK(list, int(count), req.GetPageIndex(), req.GetPageSize(), "查询成功")
}

// Get 获取TbDemoCopy
// @Summary 获取TbDemoCopy
// @Description 获取TbDemoCopy
// @Tags TbDemoCopy
// @Param id path int false "id"
// @Success 200 {object} response.Response{data=models.TbDemoCopy} "{"code": 200, "data": [...]}"
// @Router /api/v1/tb-demo-copy/{id} [get]
// @Security Bearer
func (e TbDemoCopy) Get(c *gin.Context) {
	req := dto.TbDemoCopyGetReq{}
	s := service.TbDemoCopy{}
    err := e.MakeContext(c).
		MakeOrm().
		Bind(&req).
		MakeService(&s.Service).
		Errors
	if err != nil {
		e.Logger.Error(err)
		e.Error(500, err, err.Error())
		return
	}
	var object models.TbDemoCopy

	p := actions.GetPermissionFromContext(c)
	err = s.Get(&req, p, &object)
	if err != nil {
		e.Error(500, err, fmt.Sprintf("获取TbDemoCopy失败，\r\n失败信息 %s", err.Error()))
        return
	}

	e.OK( object, "查询成功")
}

// Insert 创建TbDemoCopy
// @Summary 创建TbDemoCopy
// @Description 创建TbDemoCopy
// @Tags TbDemoCopy
// @Accept application/json
// @Product application/json
// @Param data body dto.TbDemoCopyInsertReq true "data"
// @Success 200 {object} response.Response	"{"code": 200, "message": "添加成功"}"
// @Router /api/v1/tb-demo-copy [post]
// @Security Bearer
func (e TbDemoCopy) Insert(c *gin.Context) {
    req := dto.TbDemoCopyInsertReq{}
    s := service.TbDemoCopy{}
    err := e.MakeContext(c).
        MakeOrm().
        Bind(&req).
        MakeService(&s.Service).
        Errors
    if err != nil {
        e.Logger.Error(err)
        e.Error(500, err, err.Error())
        return
    }
	// 设置创建人
	req.SetCreateBy(user.GetUserId(c))

	err = s.Insert(&req)
	if err != nil {
		e.Error(500, err, fmt.Sprintf("创建TbDemoCopy失败，\r\n失败信息 %s", err.Error()))
        return
	}

	e.OK(req.GetId(), "创建成功")
}

// Update 修改TbDemoCopy
// @Summary 修改TbDemoCopy
// @Description 修改TbDemoCopy
// @Tags TbDemoCopy
// @Accept application/json
// @Product application/json
// @Param id path int true "id"
// @Param data body dto.TbDemoCopyUpdateReq true "body"
// @Success 200 {object} response.Response	"{"code": 200, "message": "修改成功"}"
// @Router /api/v1/tb-demo-copy/{id} [put]
// @Security Bearer
func (e TbDemoCopy) Update(c *gin.Context) {
    req := dto.TbDemoCopyUpdateReq{}
    s := service.TbDemoCopy{}
    err := e.MakeContext(c).
        MakeOrm().
        Bind(&req).
        MakeService(&s.Service).
        Errors
    if err != nil {
        e.Logger.Error(err)
        e.Error(500, err, err.Error())
        return
    }
	req.SetUpdateBy(user.GetUserId(c))
	p := actions.GetPermissionFromContext(c)

	err = s.Update(&req, p)
	if err != nil {
		e.Error(500, err, fmt.Sprintf("修改TbDemoCopy失败，\r\n失败信息 %s", err.Error()))
        return
	}
	e.OK( req.GetId(), "修改成功")
}

// Delete 删除TbDemoCopy
// @Summary 删除TbDemoCopy
// @Description 删除TbDemoCopy
// @Tags TbDemoCopy
// @Param data body dto.TbDemoCopyDeleteReq true "body"
// @Success 200 {object} response.Response	"{"code": 200, "message": "删除成功"}"
// @Router /api/v1/tb-demo-copy [delete]
// @Security Bearer
func (e TbDemoCopy) Delete(c *gin.Context) {
    s := service.TbDemoCopy{}
    req := dto.TbDemoCopyDeleteReq{}
    err := e.MakeContext(c).
        MakeOrm().
        Bind(&req).
        MakeService(&s.Service).
        Errors
    if err != nil {
        e.Logger.Error(err)
        e.Error(500, err, err.Error())
        return
    }

	// req.SetUpdateBy(user.GetUserId(c))
	p := actions.GetPermissionFromContext(c)

	err = s.Remove(&req, p)
	if err != nil {
		e.Error(500, err, fmt.Sprintf("删除TbDemoCopy失败，\r\n失败信息 %s", err.Error()))
        return
	}
	e.OK( req.GetId(), "删除成功")
}
