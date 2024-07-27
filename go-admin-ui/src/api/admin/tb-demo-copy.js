import request from '@/utils/request'

// 查询TbDemoCopy列表
export function listTbDemoCopy(query) {
    return request({
        url: '/api/v1/tb-demo-copy',
        method: 'get',
        params: query
    })
}

// 查询TbDemoCopy详细
export function getTbDemoCopy (id) {
    return request({
        url: '/api/v1/tb-demo-copy/' + id,
        method: 'get'
    })
}


// 新增TbDemoCopy
export function addTbDemoCopy(data) {
    return request({
        url: '/api/v1/tb-demo-copy',
        method: 'post',
        data: data
    })
}

// 修改TbDemoCopy
export function updateTbDemoCopy(data) {
    return request({
        url: '/api/v1/tb-demo-copy/'+data.id,
        method: 'put',
        data: data
    })
}

// 删除TbDemoCopy
export function delTbDemoCopy(data) {
    return request({
        url: '/api/v1/tb-demo-copy',
        method: 'delete',
        data: data
    })
}

