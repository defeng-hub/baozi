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

type TbZhifajiancha struct {
	api.Api
}

// GetPage 获取TbZhifajiancha列表
// @Summary 获取TbZhifajiancha列表
// @Description 获取TbZhifajiancha列表
// @Tags TbZhifajiancha
// @Param pid query string false "项目id"
// @Param file query string false "照片或视频"
// @Param user query string false "上传人"
// @Param department query string false "所属部门"
// @Param pageSize query int false "页条数"
// @Param pageIndex query int false "页码"
// @Success 200 {object} response.Response{data=response.Page{list=[]models.TbZhifajiancha}} "{"code": 200, "data": [...]}"
// @Router /api/v1/tb-zhifajiancha [get]
// @Security Bearer
func (e TbZhifajiancha) GetPage(c *gin.Context) {
    req := dto.TbZhifajianchaGetPageReq{}
    s := service.TbZhifajiancha{}
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
	list := make([]models.TbZhifajiancha, 0)
	var count int64

	err = s.GetPage(&req, p, &list, &count)
	if err != nil {
		e.Error(500, err, fmt.Sprintf("获取TbZhifajiancha失败，\r\n失败信息 %s", err.Error()))
        return
	}

	e.PageOK(list, int(count), req.GetPageIndex(), req.GetPageSize(), "查询成功")
}

// Get 获取TbZhifajiancha
// @Summary 获取TbZhifajiancha
// @Description 获取TbZhifajiancha
// @Tags TbZhifajiancha
// @Param id path int false "id"
// @Success 200 {object} response.Response{data=models.TbZhifajiancha} "{"code": 200, "data": [...]}"
// @Router /api/v1/tb-zhifajiancha/{id} [get]
// @Security Bearer
func (e TbZhifajiancha) Get(c *gin.Context) {
	req := dto.TbZhifajianchaGetReq{}
	s := service.TbZhifajiancha{}
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
	var object models.TbZhifajiancha

	p := actions.GetPermissionFromContext(c)
	err = s.Get(&req, p, &object)
	if err != nil {
		e.Error(500, err, fmt.Sprintf("获取TbZhifajiancha失败，\r\n失败信息 %s", err.Error()))
        return
	}

	e.OK( object, "查询成功")
}

// Insert 创建TbZhifajiancha
// @Summary 创建TbZhifajiancha
// @Description 创建TbZhifajiancha
// @Tags TbZhifajiancha
// @Accept application/json
// @Product application/json
// @Param data body dto.TbZhifajianchaInsertReq true "data"
// @Success 200 {object} response.Response	"{"code": 200, "message": "添加成功"}"
// @Router /api/v1/tb-zhifajiancha [post]
// @Security Bearer
func (e TbZhifajiancha) Insert(c *gin.Context) {
    req := dto.TbZhifajianchaInsertReq{}
    s := service.TbZhifajiancha{}
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
		e.Error(500, err, fmt.Sprintf("创建TbZhifajiancha失败，\r\n失败信息 %s", err.Error()))
        return
	}

	e.OK(req.GetId(), "创建成功")
}

// Update 修改TbZhifajiancha
// @Summary 修改TbZhifajiancha
// @Description 修改TbZhifajiancha
// @Tags TbZhifajiancha
// @Accept application/json
// @Product application/json
// @Param id path int true "id"
// @Param data body dto.TbZhifajianchaUpdateReq true "body"
// @Success 200 {object} response.Response	"{"code": 200, "message": "修改成功"}"
// @Router /api/v1/tb-zhifajiancha/{id} [put]
// @Security Bearer
func (e TbZhifajiancha) Update(c *gin.Context) {
    req := dto.TbZhifajianchaUpdateReq{}
    s := service.TbZhifajiancha{}
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
		e.Error(500, err, fmt.Sprintf("修改TbZhifajiancha失败，\r\n失败信息 %s", err.Error()))
        return
	}
	e.OK( req.GetId(), "修改成功")
}

// Delete 删除TbZhifajiancha
// @Summary 删除TbZhifajiancha
// @Description 删除TbZhifajiancha
// @Tags TbZhifajiancha
// @Param data body dto.TbZhifajianchaDeleteReq true "body"
// @Success 200 {object} response.Response	"{"code": 200, "message": "删除成功"}"
// @Router /api/v1/tb-zhifajiancha [delete]
// @Security Bearer
func (e TbZhifajiancha) Delete(c *gin.Context) {
    s := service.TbZhifajiancha{}
    req := dto.TbZhifajianchaDeleteReq{}
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
		e.Error(500, err, fmt.Sprintf("删除TbZhifajiancha失败，\r\n失败信息 %s", err.Error()))
        return
	}
	e.OK( req.GetId(), "删除成功")
}
