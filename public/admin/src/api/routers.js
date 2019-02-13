import axios from '@/libs/api.request'

export const getRouterReq = () =>{
    return new Promise((resolve, reject) =>{
        axios.request({
            url: 'restapi/sysMenu/getUserSysMenu',
            method: 'get'
        }).then(res=>{
            resolve(res)
        }).catch(e=>{
            reject(e)
        })
    })
}
