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

type TbTable struct {
	service.Service
}

// GetPage 获取TbTable列表
func (e *TbTable) GetPage(c *dto.TbTableGetPageReq, p *actions.DataPermission, list *[]models.TbTable, count *int64) error {
	var err error
	var data models.TbTable

	err = e.Orm.Model(&data).
		Scopes(
			cDto.MakeCondition(c.GetNeedSearch()),
			cDto.Paginate(c.GetPageSize(), c.GetPageIndex()),
			actions.Permission(data.TableName(), p),
		).
		Find(list).Limit(-1).Offset(-1).
		Count(count).Error
	if err != nil {
		e.Log.Errorf("TbTableService GetPage error:%s \r\n", err)
		return err
	}
	return nil
}

// Get 获取TbTable对象
func (e *TbTable) Get(d *dto.TbTableGetReq, p *actions.DataPermission, model *models.TbTable) error {
	var data models.TbTable

	err := e.Orm.Model(&data).
		Scopes(
			actions.Permission(data.TableName(), p),
		).
		First(model, d.GetId()).Error
	if err != nil && errors.Is(err, gorm.ErrRecordNotFound) {
		err = errors.New("查看对象不存在或无权查看")
		e.Log.Errorf("Service GetTbTable error:%s \r\n", err)
		return err
	}
	if err != nil {
		e.Log.Errorf("db error:%s", err)
		return err
	}
	return nil
}
func (e *TbTable) GetByPhone(d *dto.TbTableGetByPhoneReq, p *actions.DataPermission, model *models.TbTable) error {
	var data models.TbTable

	err := e.Orm.Model(&data).Where("`phone` = ?", d.GetPhone()).
		Last(model).Error
	if err != nil && errors.Is(err, gorm.ErrRecordNotFound) {
		err = errors.New("查看对象不存在或无权查看")
		e.Log.Errorf("Service GetTbTable error:%s \r\n", err)
		return err
	}
	if err != nil {
		e.Log.Errorf("db error:%s", err)
		return err
	}
	return nil
}

func (e *TbTable) GetByDesId(d *dto.TbTableGetByDesIdReq, p *actions.DataPermission, model *models.TbTable) error {
	var data models.TbTable

	err := e.Orm.Model(&data).Where("`id` = ?", d.GetDesId()).
		Last(model).Error
	if err != nil && errors.Is(err, gorm.ErrRecordNotFound) {
		err = errors.New("查看对象不存在或无权查看")
		e.Log.Errorf("Service GetTbTable error:%s \r\n", err)
		return err
	}
	if err != nil {
		e.Log.Errorf("db error:%s", err)
		return err
	}
	return nil
}

// Insert 创建TbTable对象
func (e *TbTable) Insert(c *dto.TbTableInsertReq) error {
	var err error
	var data models.TbTable
	c.Generate(&data)
	err = e.Orm.Create(&data).Error
	if err != nil {
		e.Log.Errorf("TbTableService Insert error:%s \r\n", err)
		return err
	}
	return nil
}

// Update 修改TbTable对象
func (e *TbTable) Update(c *dto.TbTableUpdateReq, p *actions.DataPermission) error {
	var err error
	var data = models.TbTable{}
	e.Orm.Scopes(
		actions.Permission(data.TableName(), p),
	).First(&data, c.GetId())
	c.Generate(&data)

	db := e.Orm.Save(&data)
	if err = db.Error; err != nil {
		e.Log.Errorf("TbTableService Save error:%s \r\n", err)
		return err
	}
	if db.RowsAffected == 0 {
		return errors.New("无权更新该数据")
	}
	return nil
}

// Remove 删除TbTable
func (e *TbTable) Remove(d *dto.TbTableDeleteReq, p *actions.DataPermission) error {
	var data models.TbTable

	db := e.Orm.Model(&data).
		Scopes(
			actions.Permission(data.TableName(), p),
		).Delete(&data, d.GetId())
	if err := db.Error; err != nil {
		e.Log.Errorf("Service RemoveTbTable error:%s \r\n", err)
		return err
	}
	if db.RowsAffected == 0 {
		return errors.New("无权删除该数据")
	}
	return nil
}
