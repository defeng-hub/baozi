import request from '@/utils/request'

// 查询TbZhifaUser列表
export function listTbZhifaUser(query) {
    return request({
        url: '/api/v1/tb-zhifa-user',
        method: 'get',
        params: query
    })
}

// 查询TbZhifaUser详细
export function getTbZhifaUser (id) {
    return request({
        url: '/api/v1/tb-zhifa-user/' + id,
        method: 'get'
    })
}


// 新增TbZhifaUser
export function addTbZhifaUser(data) {
    return request({
        url: '/api/v1/tb-zhifa-user',
        method: 'post',
        data: data
    })
}

// 修改TbZhifaUser
export function updateTbZhifaUser(data) {
    return request({
        url: '/api/v1/tb-zhifa-user/'+data.id,
        method: 'put',
        data: data
    })
}

// 删除TbZhifaUser
export function delTbZhifaUser(data) {
    return request({
        url: '/api/v1/tb-zhifa-user',
        method: 'delete',
        data: data
    })
}

