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

type TbConfig struct {
	api.Api
}

// GetPage 获取TbConfig列表
// @Summary 获取TbConfig列表
// @Description 获取TbConfig列表
// @Tags TbConfig
// @Param pageSize query int false "页条数"
// @Param pageIndex query int false "页码"
// @Success 200 {object} response.Response{data=response.Page{list=[]models.TbConfig}} "{"code": 200, "data": [...]}"
// @Router /api/v1/tb-config [get]
// @Security Bearer
func (e TbConfig) GetPage(c *gin.Context) {
	req := dto.TbConfigGetPageReq{}
	s := service.TbConfig{}
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
	list := make([]models.TbConfig, 0)
	var count int64

	err = s.GetPage(&req, p, &list, &count)
	if err != nil {
		e.Error(500, err, fmt.Sprintf("获取TbConfig失败，\r\n失败信息 %s", err.Error()))
		return
	}

	e.PageOK(list, int(count), req.GetPageIndex(), req.GetPageSize(), "查询成功")
}

// Get 获取TbConfig
// @Summary 获取TbConfig
// @Description 获取TbConfig
// @Tags TbConfig
// @Param id path int false "id"
// @Success 200 {object} response.Response{data=models.TbConfig} "{"code": 200, "data": [...]}"
// @Router /api/v1/tb-config/{id} [get]
// @Security Bearer
func (e TbConfig) Get(c *gin.Context) {
	req := dto.TbConfigGetReq{}
	s := service.TbConfig{}
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
	var object models.TbConfig

	p := actions.GetPermissionFromContext(c)
	err = s.Get(&req, p, &object)
	if err != nil {
		e.Error(500, err, fmt.Sprintf("获取TbConfig失败，\r\n失败信息 %s", err.Error()))
		return
	}

	e.OK(object, "查询成功")
}

func (e TbConfig) GetKey(c *gin.Context) {
	req := dto.TbConfigGetReq{}
	s := service.TbConfig{}
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
	var object models.TbConfig

	p := actions.GetPermissionFromContext(c)
	err = s.GetByKey(&req, p, &object)
	if err != nil {
		e.Error(500, err, fmt.Sprintf("获取TbConfig失败，\r\n失败信息 %s", err.Error()))
		return
	}

	e.OK(object, "查询成功")
}

// Insert 创建TbConfig
// @Summary 创建TbConfig
// @Description 创建TbConfig
// @Tags TbConfig
// @Accept application/json
// @Product application/json
// @Param data body dto.TbConfigInsertReq true "data"
// @Success 200 {object} response.Response	"{"code": 200, "message": "添加成功"}"
// @Router /api/v1/tb-config [post]
// @Security Bearer
func (e TbConfig) Insert(c *gin.Context) {
	req := dto.TbConfigInsertReq{}
	s := service.TbConfig{}
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
		e.Error(500, err, fmt.Sprintf("创建TbConfig失败，\r\n失败信息 %s", err.Error()))
		return
	}

	e.OK(req.GetId(), "创建成功")
}

// Update 修改TbConfig
// @Summary 修改TbConfig
// @Description 修改TbConfig
// @Tags TbConfig
// @Accept application/json
// @Product application/json
// @Param id path int true "id"
// @Param data body dto.TbConfigUpdateReq true "body"
// @Success 200 {object} response.Response	"{"code": 200, "message": "修改成功"}"
// @Router /api/v1/tb-config/{id} [put]
// @Security Bearer
func (e TbConfig) Update(c *gin.Context) {
	req := dto.TbConfigUpdateReq{}
	s := service.TbConfig{}
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
		e.Error(500, err, fmt.Sprintf("修改TbConfig失败，\r\n失败信息 %s", err.Error()))
		return
	}
	e.OK(req.GetId(), "修改成功")
}

// Delete 删除TbConfig
// @Summary 删除TbConfig
// @Description 删除TbConfig
// @Tags TbConfig
// @Param data body dto.TbConfigDeleteReq true "body"
// @Success 200 {object} response.Response	"{"code": 200, "message": "删除成功"}"
// @Router /api/v1/tb-config [delete]
// @Security Bearer
func (e TbConfig) Delete(c *gin.Context) {
	s := service.TbConfig{}
	req := dto.TbConfigDeleteReq{}
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
		e.Error(500, err, fmt.Sprintf("删除TbConfig失败，\r\n失败信息 %s", err.Error()))
		return
	}
	e.OK(req.GetId(), "删除成功")
}
