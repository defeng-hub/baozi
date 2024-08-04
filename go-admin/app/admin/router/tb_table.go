package router

import (
	"github.com/gin-gonic/gin"
	jwt "github.com/go-admin-team/go-admin-core/sdk/pkg/jwtauth"

	"go-admin/app/admin/apis"
	"go-admin/common/actions"
	"go-admin/common/middleware"
)

func init() {
	routerCheckRole = append(routerCheckRole, registerTbTableRouter)
}

// registerTbTableRouter
func registerTbTableRouter(v1 *gin.RouterGroup, authMiddleware *jwt.GinJWTMiddleware) {
	api := apis.TbTable{}
	n := v1.Group("/tb-table")
	n.POST("submit", api.Submit)
	n.GET("/GK15qPn/:phone", api.GetByPhone)
	n.GET("/HJnq8c/:id", api.GetByDesId) //加密的
	n.GET("/page", api.GetPageSuccess)
	n.GET("/filter", api.GetFilterList)
	n.GET("/HJnq8caq8/:id", api.Get)

	r := n.Use(authMiddleware.MiddlewareFunc()).Use(middleware.AuthCheckRole())
	{
		r.GET("", actions.PermissionAction(), api.GetPage)
		r.GET("/:id", actions.PermissionAction(), api.Get)
		r.POST("", api.Insert)
		r.PUT("/:id", actions.PermissionAction(), api.Update)
		r.DELETE("", api.Delete)
	}
}
