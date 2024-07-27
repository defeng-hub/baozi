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

type TbDemoCopy struct {
	service.Service
}

// GetPage 获取TbDemoCopy列表
func (e *TbDemoCopy) GetPage(c *dto.TbDemoCopyGetPageReq, p *actions.DataPermission, list *[]models.TbDemoCopy, count *int64) error {
	var err error
	var data models.TbDemoCopy

	err = e.Orm.Model(&data).
		Scopes(
			cDto.MakeCondition(c.GetNeedSearch()),
			cDto.Paginate(c.GetPageSize(), c.GetPageIndex()),
			actions.Permission(data.TableName(), p),
		).
		Find(list).Limit(-1).Offset(-1).
		Count(count).Error
	if err != nil {
		e.Log.Errorf("TbDemoCopyService GetPage error:%s \r\n", err)
		return err
	}
	return nil
}

// Get 获取TbDemoCopy对象
func (e *TbDemoCopy) Get(d *dto.TbDemoCopyGetReq, p *actions.DataPermission, model *models.TbDemoCopy) error {
	var data models.TbDemoCopy

	err := e.Orm.Model(&data).
		Scopes(
			actions.Permission(data.TableName(), p),
		).
		First(model, d.GetId()).Error
	if err != nil && errors.Is(err, gorm.ErrRecordNotFound) {
		err = errors.New("查看对象不存在或无权查看")
		e.Log.Errorf("Service GetTbDemoCopy error:%s \r\n", err)
		return err
	}
	if err != nil {
		e.Log.Errorf("db error:%s", err)
		return err
	}
	return nil
}

// Insert 创建TbDemoCopy对象
func (e *TbDemoCopy) Insert(c *dto.TbDemoCopyInsertReq) error {
    var err error
    var data models.TbDemoCopy
    c.Generate(&data)
	err = e.Orm.Create(&data).Error
	if err != nil {
		e.Log.Errorf("TbDemoCopyService Insert error:%s \r\n", err)
		return err
	}
	return nil
}

// Update 修改TbDemoCopy对象
func (e *TbDemoCopy) Update(c *dto.TbDemoCopyUpdateReq, p *actions.DataPermission) error {
    var err error
    var data = models.TbDemoCopy{}
    e.Orm.Scopes(
            actions.Permission(data.TableName(), p),
        ).First(&data, c.GetId())
    c.Generate(&data)

    db := e.Orm.Save(&data)
    if err = db.Error; err != nil {
        e.Log.Errorf("TbDemoCopyService Save error:%s \r\n", err)
        return err
    }
    if db.RowsAffected == 0 {
        return errors.New("无权更新该数据")
    }
    return nil
}

// Remove 删除TbDemoCopy
func (e *TbDemoCopy) Remove(d *dto.TbDemoCopyDeleteReq, p *actions.DataPermission) error {
	var data models.TbDemoCopy

	db := e.Orm.Model(&data).
		Scopes(
			actions.Permission(data.TableName(), p),
		).Delete(&data, d.GetId())
	if err := db.Error; err != nil {
        e.Log.Errorf("Service RemoveTbDemoCopy error:%s \r\n", err)
        return err
    }
    if db.RowsAffected == 0 {
        return errors.New("无权删除该数据")
    }
	return nil
}
