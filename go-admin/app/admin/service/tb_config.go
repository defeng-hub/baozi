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

type TbConfig struct {
	service.Service
}

// GetPage 获取TbConfig列表
func (e *TbConfig) GetPage(c *dto.TbConfigGetPageReq, p *actions.DataPermission, list *[]models.TbConfig, count *int64) error {
	var err error
	var data models.TbConfig

	err = e.Orm.Model(&data).
		Scopes(
			cDto.MakeCondition(c.GetNeedSearch()),
			cDto.Paginate(c.GetPageSize(), c.GetPageIndex()),
			actions.Permission(data.TableName(), p),
		).
		Find(list).Limit(-1).Offset(-1).
		Count(count).Error
	if err != nil {
		e.Log.Errorf("TbConfigService GetPage error:%s \r\n", err)
		return err
	}
	return nil
}

// Get 获取TbConfig对象
func (e *TbConfig) Get(d *dto.TbConfigGetReq, p *actions.DataPermission, model *models.TbConfig) error {
	var data models.TbConfig

	err := e.Orm.Model(&data).
		Scopes(
			actions.Permission(data.TableName(), p),
		).
		First(model, d.GetId()).Error
	if err != nil && errors.Is(err, gorm.ErrRecordNotFound) {
		err = errors.New("查看对象不存在或无权查看")
		e.Log.Errorf("Service GetTbConfig error:%s \r\n", err)
		return err
	}
	if err != nil {
		e.Log.Errorf("db error:%s", err)
		return err
	}
	return nil
}

// Insert 创建TbConfig对象
func (e *TbConfig) Insert(c *dto.TbConfigInsertReq) error {
    var err error
    var data models.TbConfig
    c.Generate(&data)
	err = e.Orm.Create(&data).Error
	if err != nil {
		e.Log.Errorf("TbConfigService Insert error:%s \r\n", err)
		return err
	}
	return nil
}

// Update 修改TbConfig对象
func (e *TbConfig) Update(c *dto.TbConfigUpdateReq, p *actions.DataPermission) error {
    var err error
    var data = models.TbConfig{}
    e.Orm.Scopes(
            actions.Permission(data.TableName(), p),
        ).First(&data, c.GetId())
    c.Generate(&data)

    db := e.Orm.Save(&data)
    if err = db.Error; err != nil {
        e.Log.Errorf("TbConfigService Save error:%s \r\n", err)
        return err
    }
    if db.RowsAffected == 0 {
        return errors.New("无权更新该数据")
    }
    return nil
}

// Remove 删除TbConfig
func (e *TbConfig) Remove(d *dto.TbConfigDeleteReq, p *actions.DataPermission) error {
	var data models.TbConfig

	db := e.Orm.Model(&data).
		Scopes(
			actions.Permission(data.TableName(), p),
		).Delete(&data, d.GetId())
	if err := db.Error; err != nil {
        e.Log.Errorf("Service RemoveTbConfig error:%s \r\n", err)
        return err
    }
    if db.RowsAffected == 0 {
        return errors.New("无权删除该数据")
    }
	return nil
}
