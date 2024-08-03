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

type TbZhifaUser struct {
	api.Api
}

// GetPage 获取TbZhifaUser列表
// @Summary 获取TbZhifaUser列表
// @Description 获取TbZhifaUser列表
// @Tags TbZhifaUser
// @Param username query string false "用户名"
// @Param name query string false "姓名"
// @Param department query string false "部门"
// @Param pageSize query int false "页条数"
// @Param pageIndex query int false "页码"
// @Success 200 {object} response.Response{data=response.Page{list=[]models.TbZhifaUser}} "{"code": 200, "data": [...]}"
// @Router /api/v1/tb-zhifa-user [get]
// @Security Bearer
func (e TbZhifaUser) GetPage(c *gin.Context) {
	req := dto.TbZhifaUserGetPageReq{}
	s := service.TbZhifaUser{}
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
	list := make([]models.TbZhifaUser, 0)
	var count int64

	err = s.GetPage(&req, p, &list, &count)
	if err != nil {
		e.Error(500, err, fmt.Sprintf("获取TbZhifaUser失败，\r\n失败信息 %s", err.Error()))
		return
	}

	e.PageOK(list, int(count), req.GetPageIndex(), req.GetPageSize(), "查询成功")
}

// Get 获取TbZhifaUser
// @Summary 获取TbZhifaUser
// @Description 获取TbZhifaUser
// @Tags TbZhifaUser
// @Param id path int false "id"
// @Success 200 {object} response.Response{data=models.TbZhifaUser} "{"code": 200, "data": [...]}"
// @Router /api/v1/tb-zhifa-user/{id} [get]
// @Security Bearer
func (e TbZhifaUser) Get(c *gin.Context) {
	req := dto.TbZhifaUserGetReq{}
	s := service.TbZhifaUser{}
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
	var object models.TbZhifaUser

	p := actions.GetPermissionFromContext(c)
	err = s.Get(&req, p, &object)
	if err != nil {
		e.Error(500, err, fmt.Sprintf("获取TbZhifaUser失败，\r\n失败信息 %s", err.Error()))
		return
	}

	e.OK(object, "查询成功")
}

// Insert 创建TbZhifaUser
// @Summary 创建TbZhifaUser
// @Description 创建TbZhifaUser
// @Tags TbZhifaUser
// @Accept application/json
// @Product application/json
// @Param data body dto.TbZhifaUserInsertReq true "data"
// @Success 200 {object} response.Response	"{"code": 200, "message": "添加成功"}"
// @Router /api/v1/tb-zhifa-user [post]
// @Security Bearer
func (e TbZhifaUser) Insert(c *gin.Context) {
	req := dto.TbZhifaUserInsertReq{}
	s := service.TbZhifaUser{}
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
		e.Error(500, err, fmt.Sprintf("创建TbZhifaUser失败，\r\n失败信息 %s", err.Error()))
		return
	}

	e.OK(req.GetId(), "创建成功")
}

// Update 修改TbZhifaUser
// @Summary 修改TbZhifaUser
// @Description 修改TbZhifaUser
// @Tags TbZhifaUser
// @Accept application/json
// @Product application/json
// @Param id path int true "id"
// @Param data body dto.TbZhifaUserUpdateReq true "body"
// @Success 200 {object} response.Response	"{"code": 200, "message": "修改成功"}"
// @Router /api/v1/tb-zhifa-user/{id} [put]
// @Security Bearer
func (e TbZhifaUser) Update(c *gin.Context) {
	req := dto.TbZhifaUserUpdateReq{}
	s := service.TbZhifaUser{}
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
		e.Error(500, err, fmt.Sprintf("修改TbZhifaUser失败，\r\n失败信息 %s", err.Error()))
		return
	}
	e.OK(req.GetId(), "修改成功")
}

func (e TbZhifaUser) Login(c *gin.Context) {
	req := dto.TbZhifaUserLoginReq{}
	s := service.TbZhifaUser{}
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
	var object models.TbZhifaUser

	err = s.Login(&req, &object)
	if err != nil {
		var res = gin.H{"status": false, "msg": "账号或密码错误"}
		e.OK(res, "登陆失败")
		return
	}
	var res = gin.H{"user": object, "status": true, "msg": "登陆成功"}
	e.OK(res, "登陆成功")
}

// Delete 删除TbZhifaUser
// @Summary 删除TbZhifaUser
// @Description 删除TbZhifaUser
// @Tags TbZhifaUser
// @Param data body dto.TbZhifaUserDeleteReq true "body"
// @Success 200 {object} response.Response	"{"code": 200, "message": "删除成功"}"
// @Router /api/v1/tb-zhifa-user [delete]
// @Security Bearer
func (e TbZhifaUser) Delete(c *gin.Context) {
	s := service.TbZhifaUser{}
	req := dto.TbZhifaUserDeleteReq{}
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
		e.Error(500, err, fmt.Sprintf("删除TbZhifaUser失败，\r\n失败信息 %s", err.Error()))
		return
	}
	e.OK(req.GetId(), "删除成功")
}
