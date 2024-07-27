import request from '@/utils/request'

// 查询TbZhifajiancha列表
export function listTbZhifajiancha(query) {
    return request({
        url: '/api/v1/tb-zhifajiancha',
        method: 'get',
        params: query
    })
}

// 查询TbZhifajiancha详细
export function getTbZhifajiancha (id) {
    return request({
        url: '/api/v1/tb-zhifajiancha/' + id,
        method: 'get'
    })
}


// 新增TbZhifajiancha
export function addTbZhifajiancha(data) {
    return request({
        url: '/api/v1/tb-zhifajiancha',
        method: 'post',
        data: data
    })
}

// 修改TbZhifajiancha
export function updateTbZhifajiancha(data) {
    return request({
        url: '/api/v1/tb-zhifajiancha/'+data.id,
        method: 'put',
        data: data
    })
}

// 删除TbZhifajiancha
export function delTbZhifajiancha(data) {
    return request({
        url: '/api/v1/tb-zhifajiancha',
        method: 'delete',
        data: data
    })
}

