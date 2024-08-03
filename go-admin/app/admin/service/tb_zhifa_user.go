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

type TbZhifaUser struct {
	service.Service
}

// GetPage 获取TbZhifaUser列表
func (e *TbZhifaUser) GetPage(c *dto.TbZhifaUserGetPageReq, p *actions.DataPermission, list *[]models.TbZhifaUser, count *int64) error {
	var err error
	var data models.TbZhifaUser

	err = e.Orm.Model(&data).
		Scopes(
			cDto.MakeCondition(c.GetNeedSearch()),
			cDto.Paginate(c.GetPageSize(), c.GetPageIndex()),
			actions.Permission(data.TableName(), p),
		).
		Find(list).Limit(-1).Offset(-1).
		Count(count).Error
	if err != nil {
		e.Log.Errorf("TbZhifaUserService GetPage error:%s \r\n", err)
		return err
	}
	return nil
}

// Get 获取TbZhifaUser对象
func (e *TbZhifaUser) Get(d *dto.TbZhifaUserGetReq, p *actions.DataPermission, model *models.TbZhifaUser) error {
	var data models.TbZhifaUser

	err := e.Orm.Model(&data).
		Scopes(
			actions.Permission(data.TableName(), p),
		).
		First(model, d.GetId()).Error
	if err != nil && errors.Is(err, gorm.ErrRecordNotFound) {
		err = errors.New("查看对象不存在或无权查看")
		e.Log.Errorf("Service GetTbZhifaUser error:%s \r\n", err)
		return err
	}
	if err != nil {
		e.Log.Errorf("db error:%s", err)
		return err
	}
	return nil
}

// Insert 创建TbZhifaUser对象
func (e *TbZhifaUser) Insert(c *dto.TbZhifaUserInsertReq) error {
	var err error
	var data models.TbZhifaUser
	c.Generate(&data)
	err = e.Orm.Create(&data).Error
	if err != nil {
		e.Log.Errorf("TbZhifaUserService Insert error:%s \r\n", err)
		return err
	}
	return nil
}

// Update 修改TbZhifaUser对象
func (e *TbZhifaUser) Update(c *dto.TbZhifaUserUpdateReq, p *actions.DataPermission) error {
	var err error
	var data = models.TbZhifaUser{}
	e.Orm.Scopes(
		actions.Permission(data.TableName(), p),
	).First(&data, c.GetId())
	c.Generate(&data)

	db := e.Orm.Save(&data)
	if err = db.Error; err != nil {
		e.Log.Errorf("TbZhifaUserService Save error:%s \r\n", err)
		return err
	}
	if db.RowsAffected == 0 {
		return errors.New("无权更新该数据")
	}
	return nil
}

// Remove 删除TbZhifaUser
func (e *TbZhifaUser) Remove(d *dto.TbZhifaUserDeleteReq, p *actions.DataPermission) error {
	var data models.TbZhifaUser

	db := e.Orm.Model(&data).
		Scopes(
			actions.Permission(data.TableName(), p),
		).Delete(&data, d.GetId())
	if err := db.Error; err != nil {
		e.Log.Errorf("Service RemoveTbZhifaUser error:%s \r\n", err)
		return err
	}
	if db.RowsAffected == 0 {
		return errors.New("无权删除该数据")
	}
	return nil
}

// Get 获取TbZhifaUser对象
func (e *TbZhifaUser) Login(d *dto.TbZhifaUserLoginReq, model *models.TbZhifaUser) error {
	var data models.TbZhifaUser

	err := e.Orm.Model(&data).Where("`username` = ? and `passwd` = ?", d.Username, d.Passwd).
		First(model).Error
	if err != nil && errors.Is(err, gorm.ErrRecordNotFound) {
		err = errors.New("查看对象不存在或无权查看")
		e.Log.Errorf("Service GetTbZhifaUser error:%s \r\n", err)
		return err
	}
	if err != nil {
		e.Log.Errorf("db error:%s", err)
		return err
	}
	return nil
}
