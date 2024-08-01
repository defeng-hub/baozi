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

type TbTable struct {
	api.Api
}

// GetPage 获取TbTable列表
// @Summary 获取TbTable列表
// @Description 获取TbTable列表
// @Tags TbTable
// @Param phone query string false "手机号"
// @Param fabaofangName query string false "发包方名称"
// @Param fabaofangUser query string false "发包方联系人"
// @Param shigongfangName query string false "施工方名称"
// @Param shigongfangUser query string false "施工方项目负责人"
// @Param shigongfangPhone query string false "施工方联系方式"
// @Param pageSize query int false "页条数"
// @Param pageIndex query int false "页码"
// @Success 200 {object} response.Response{data=response.Page{list=[]models.TbTable}} "{"code": 200, "data": [...]}"
// @Router /api/v1/tb-table [get]
// @Security Bearer
func (e TbTable) GetPage(c *gin.Context) {
	req := dto.TbTableGetPageReq{}
	s := service.TbTable{}
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
	list := make([]models.TbTable, 0)
	var count int64

	err = s.GetPage(&req, p, &list, &count)
	if err != nil {
		e.Error(500, err, fmt.Sprintf("获取TbTable失败，\r\n失败信息 %s", err.Error()))
		return
	}

	e.PageOK(list, int(count), req.GetPageIndex(), req.GetPageSize(), "查询成功")
}

// Get 获取TbTable
// @Summary 获取TbTable
// @Description 获取TbTable
// @Tags TbTable
// @Param id path int false "id"
// @Success 200 {object} response.Response{data=models.TbTable} "{"code": 200, "data": [...]}"
// @Router /api/v1/tb-table/{id} [get]
// @Security Bearer
func (e TbTable) Get(c *gin.Context) {
	req := dto.TbTableGetReq{}
	s := service.TbTable{}
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
	var object models.TbTable

	p := actions.GetPermissionFromContext(c)
	err = s.Get(&req, p, &object)
	if err != nil {
		e.Error(500, err, fmt.Sprintf("获取TbTable失败，\r\n失败信息 %s", err.Error()))
		return
	}

	e.OK(object, "查询成功")
}

// Insert 创建TbTable
// @Summary 创建TbTable
// @Description 创建TbTable
// @Tags TbTable
// @Accept application/json
// @Product application/json
// @Param data body dto.TbTableInsertReq true "data"
// @Success 200 {object} response.Response	"{"code": 200, "message": "添加成功"}"
// @Router /api/v1/tb-table [post]
// @Security Bearer
func (e TbTable) Insert(c *gin.Context) {
	req := dto.TbTableInsertReq{}
	s := service.TbTable{}
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
		e.Error(500, err, fmt.Sprintf("创建TbTable失败，\r\n失败信息 %s", err.Error()))
		return
	}

	e.OK(req.GetId(), "创建成功")
}

type UploadFile []struct {
	URL string `json:"url"`
}

func (u UploadFile) GetUrl() string {
	if len(u) > 0 {
		return u[0].URL
	} else {
		return ""
	}
}

type SubmitForm struct {
	Phone       string `json:"phone"`
	Zuoyemianji string `json:"zuoyemianji"`
	Zuoyedizhi  string `json:"zuoyedizhi"`
	Suoshushequ string `json:"suoshushequ"`
	Fabaofang   struct {
		Name  string `json:"name"`
		User  string `json:"user"`
		Phone string `json:"phone"`
	} `json:"fabaofang"`
	Shigongfang struct {
		Name  string `json:"name"`
		User  string `json:"user"`
		Phone string `json:"phone"`
	} `json:"shigongfang"`
	Yingyezhizhao                UploadFile `json:"yingyezhizhao"`
	FarenID                      UploadFile `json:"farenId"`
	Anquanxvkezheng              UploadFile `json:"anquanxvkezheng"`
	Shouquanweituozhu            UploadFile `json:"shouquanweituozhu"`
	FuzerenID                    UploadFile `json:"fuzerenId"`
	Jiayishuangfangshigonghetong UploadFile `json:"jiayishuangfangshigonghetong"`
	Anquanshengchanzerenbaoxian  UploadFile `json:"anquanshengchanzerenbaoxian"`
}

func (e TbTable) Submit(c *gin.Context) {
	form := SubmitForm{}
	s := service.TbTable{}
	err := e.MakeContext(c).
		MakeOrm().
		Bind(&form).
		MakeService(&s.Service).
		Errors
	if err != nil {
		e.Logger.Error(err)
		e.Error(500, err, err.Error())
		return
	}

	req := dto.TbTableInsertReq{
		Id:                           0,
		Phone:                        form.Phone,
		Zuoyemianji:                  form.Zuoyemianji,
		Zuoyedizhi:                   form.Zuoyedizhi,
		Suoshushequ:                  form.Suoshushequ,
		FabaofangName:                form.Fabaofang.Name,
		FabaofangUser:                form.Fabaofang.User,
		FabaofangPhone:               form.Fabaofang.Phone,
		ShigongfangName:              form.Shigongfang.Name,
		ShigongfangUser:              form.Shigongfang.User,
		ShigongfangPhone:             form.Shigongfang.Phone,
		Yingyezhizhao:                form.Yingyezhizhao.GetUrl(),
		Farenid:                      form.FarenID.GetUrl(), //#xxxxx
		Anquanxvkezheng:              form.Anquanxvkezheng.GetUrl(),
		Shouquanweituozhu:            form.Shouquanweituozhu.GetUrl(),
		Fuzerenid:                    form.FuzerenID.GetUrl(), //#xxxx
		Jiayishuangfangshigonghetong: form.Jiayishuangfangshigonghetong.GetUrl(),
		Anquanshengchanzerenbaoxian:  form.Anquanshengchanzerenbaoxian.GetUrl(),
	}

	// 设置创建人
	req.SetCreateBy(user.GetUserId(c))

	err = s.Insert(&req)
	if err != nil {
		e.Error(500, err, fmt.Sprintf("创建TbTable失败，\r\n失败信息 %s", err.Error()))
		return
	}

	e.OK(req.GetId(), "创建成功")
}

// Update 修改TbTable
// @Summary 修改TbTable
// @Description 修改TbTable
// @Tags TbTable
// @Accept application/json
// @Product application/json
// @Param id path int true "id"
// @Param data body dto.TbTableUpdateReq true "body"
// @Success 200 {object} response.Response	"{"code": 200, "message": "修改成功"}"
// @Router /api/v1/tb-table/{id} [put]
// @Security Bearer
func (e TbTable) Update(c *gin.Context) {
	req := dto.TbTableUpdateReq{}
	s := service.TbTable{}
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
		e.Error(500, err, fmt.Sprintf("修改TbTable失败，\r\n失败信息 %s", err.Error()))
		return
	}
	e.OK(req.GetId(), "修改成功")
}

// Delete 删除TbTable
// @Summary 删除TbTable
// @Description 删除TbTable
// @Tags TbTable
// @Param data body dto.TbTableDeleteReq true "body"
// @Success 200 {object} response.Response	"{"code": 200, "message": "删除成功"}"
// @Router /api/v1/tb-table [delete]
// @Security Bearer
func (e TbTable) Delete(c *gin.Context) {
	s := service.TbTable{}
	req := dto.TbTableDeleteReq{}
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
		e.Error(500, err, fmt.Sprintf("删除TbTable失败，\r\n失败信息 %s", err.Error()))
		return
	}
	e.OK(req.GetId(), "删除成功")
}
