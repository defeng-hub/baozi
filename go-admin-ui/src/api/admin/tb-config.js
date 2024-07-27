import request from '@/utils/request'

// 查询TbConfig列表
export function listTbConfig(query) {
    return request({
        url: '/api/v1/tb-config',
        method: 'get',
        params: query
    })
}

// 查询TbConfig详细
export function getTbConfig (id) {
    return request({
        url: '/api/v1/tb-config/' + id,
        method: 'get'
    })
}


// 新增TbConfig
export function addTbConfig(data) {
    return request({
        url: '/api/v1/tb-config',
        method: 'post',
        data: data
    })
}

// 修改TbConfig
export function updateTbConfig(data) {
    return request({
        url: '/api/v1/tb-config/'+data.id,
        method: 'put',
        data: data
    })
}

// 删除TbConfig
export function delTbConfig(data) {
    return request({
        url: '/api/v1/tb-config',
        method: 'delete',
        data: data
    })
}

