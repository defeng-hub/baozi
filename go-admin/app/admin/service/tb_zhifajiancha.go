package service

import (
	"errors"

	"github.com/go-admin-team/go-admin-core/sdk/service"
	"gorm.io/gorm"

	"go-admin/app/admin/models"
	"go-admin/app/admin/service/dto"
	"go-admin/common/actions"
	cDto "go-admin/common/dto"
)

type TbZhifajiancha struct {
	service.Service
}

// GetPage 获取TbZhifajiancha列表
func (e *TbZhifajiancha) GetPage(c *dto.TbZhifajianchaGetPageReq, p *actions.DataPermission, list *[]models.TbZhifajiancha, count *int64) error {
	var err error
	var data models.TbZhifajiancha

	err = e.Orm.Model(&data).
		Scopes(
			cDto.MakeCondition(c.GetNeedSearch()),
			cDto.Paginate(c.GetPageSize(), c.GetPageIndex()),
			actions.Permission(data.TableName(), p),
		).Order("id desc").
		Find(list).Limit(-1).Offset(-1).
		Count(count).Error
	if err != nil {
		e.Log.Errorf("TbZhifajianchaService GetPage error:%s \r\n", err)
		return err
	}
	return nil
}

// Get 获取TbZhifajiancha对象
func (e *TbZhifajiancha) Get(d *dto.TbZhifajianchaGetReq, p *actions.DataPermission, model *models.TbZhifajiancha) error {
	var data models.TbZhifajiancha

	err := e.Orm.Model(&data).
		Scopes(
			actions.Permission(data.TableName(), p),
		).
		First(model, d.GetId()).Error
	if err != nil && errors.Is(err, gorm.ErrRecordNotFound) {
		err = errors.New("查看对象不存在或无权查看")
		e.Log.Errorf("Service GetTbZhifajiancha error:%s \r\n", err)
		return err
	}
	if err != nil {
		e.Log.Errorf("db error:%s", err)
		return err
	}
	return nil
}

// Insert 创建TbZhifajiancha对象
func (e *TbZhifajiancha) Insert(c *dto.TbZhifajianchaInsertReq) error {
	var err error
	var data models.TbZhifajiancha
	c.Generate(&data)
	err = e.Orm.Create(&data).Error
	if err != nil {
		e.Log.Errorf("TbZhifajianchaService Insert error:%s \r\n", err)
		return err
	}
	return nil
}

// Update 修改TbZhifajiancha对象
func (e *TbZhifajiancha) Update(c *dto.TbZhifajianchaUpdateReq, p *actions.DataPermission) error {
	var err error
	var data = models.TbZhifajiancha{}
	e.Orm.Scopes(
		actions.Permission(data.TableName(), p),
	).First(&data, c.GetId())
	c.Generate(&data)

	db := e.Orm.Save(&data)
	if err = db.Error; err != nil {
		e.Log.Errorf("TbZhifajianchaService Save error:%s \r\n", err)
		return err
	}
	if db.RowsAffected == 0 {
		return errors.New("无权更新该数据")
	}
	return nil
}

// Remove 删除TbZhifajiancha
func (e *TbZhifajiancha) Remove(d *dto.TbZhifajianchaDeleteReq, p *actions.DataPermission) error {
	var data models.TbZhifajiancha

	db := e.Orm.Model(&data).
		Scopes(
			actions.Permission(data.TableName(), p),
		).Delete(&data, d.GetId())
	if err := db.Error; err != nil {
		e.Log.Errorf("Service RemoveTbZhifajiancha error:%s \r\n", err)
		return err
	}
	if db.RowsAffected == 0 {
		return errors.New("无权删除该数据")
	}
	return nil
}
