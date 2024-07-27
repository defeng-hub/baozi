import request from '@/utils/request'

// 查询TbTable列表
export function listTbTable(query) {
    return request({
        url: '/api/v1/tb-table',
        method: 'get',
        params: query
    })
}

// 查询TbTable详细
export function getTbTable (id) {
    return request({
        url: '/api/v1/tb-table/' + id,
        method: 'get'
    })
}


// 新增TbTable
export function addTbTable(data) {
    return request({
        url: '/api/v1/tb-table',
        method: 'post',
        data: data
    })
}

// 修改TbTable
export function updateTbTable(data) {
    return request({
        url: '/api/v1/tb-table/'+data.id,
        method: 'put',
        data: data
    })
}

// 删除TbTable
export function delTbTable(data) {
    return request({
        url: '/api/v1/tb-table',
        method: 'delete',
        data: data
    })
}

