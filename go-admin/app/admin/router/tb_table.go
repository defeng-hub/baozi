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
    
    r := n.Use(authMiddleware.MiddlewareFunc()).Use(middleware.AuthCheckRole())
    {
        r.GET("", actions.PermissionAction(), api.GetPage)
        r.GET("/:id", actions.PermissionAction(), api.Get)
        r.POST("", api.Insert)

        r.PUT("/:id", actions.PermissionAction(), api.Update)
        r.DELETE("", api.Delete)
    }
}
