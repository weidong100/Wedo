import axios from '@/libs/api.request'
//获取角色
export const getRoleData = (page, pageSize) => {
  return axios.request({
    url: '/adminapi/Role/index',
    method: 'get',
    param: {
        page,
        pageSize
    }
  })
}
//创建角色
export const createRole = (field) => {
  
  return axios.request({
    url: '/adminapi/Role/create',
    method: 'post',
    data: field
  })
}
//更新角色
export const updateRole = (field) => {
  
  return axios.request({
    url: '/adminapi/Role/update',
    method: 'post',
    data: field
  })
}
//删除角色
export const deleteRole = (id) => {
  return axios.request({
    url: '/adminapi/Role/delete',
    method: 'post',
    data: {
      id
    }
  })
}
//全县配置
export const roleAuth = ({ role_id, menus }) => {
  
  return axios.request({
    url: '/adminapi/Role/setRoleAuth',
    method: 'post',
    data: {
      role_id,
      menus
    }
  })
}
//角色添加获取部门接口
export const getDeptData = () => {
  return axios.request({
    url: '/adminapi/Department/index',
    method: 'get',
    
  })
}
//获取菜单
export const getMenuData = (field = {}) => {
  return axios.request({
    url: '/adminapi/sys_menu/index',
    method: 'get',
    params: field
  })
}
//创建菜单
export const createMenu = (field) => {
  return axios.request({
    url: '/adminapi/sys_menu/create',
    method: 'post',
    data: field
  })
}
//更新菜单
export const updateMenu = (field) => {
  return axios.request({
    url: '/adminapi/sys_menu/update',
    method: 'post',
    data: field
  })
}
//删除菜单
export const deleteMenu = (id) => {
  return axios.request({
    url: '/adminapi/sys_menu/delete',
    method: 'post',
    data: {
      id
    }
  })
}


export const getDragList = () => {
  return axios.request({
    url: 'get_drag_list',
    method: 'get'
  })
}

export const errorReq = () => {
  return axios.request({
    url: 'error_url',
    method: 'post'
  })
}

export const saveErrorLogger = info => {
  return axios.request({
    url: 'save_error_logger',
    data: info,
    method: 'post'
  })
}

export const uploadImg = formData => {
  return axios.request({
    url: 'image/upload',
    data: formData
  })
}

export const getOrgData = () => {
  return axios.request({
    url: 'get_org_data',
    method: 'get'
  })
}

// 获取用户信息列表
export const getUserList = () =>{
    return axios.request({
        url:"adminapi/user",
        method:"get"
    })
}

// 添加用户
export const createUser = user =>{
    return axios.request({
        url:"adminapi/user/create",
        data:user,
        method:'post',
    })
}

// 更新用户信息
export const updateUserInfo = user_detail => {
    return axios.request({
        url:'adminapi/user/update',
        data:user_detail,
        method:'put',
    })
}

// 删除用户信息
export const delUser = user_id =>{
    return axios.request(
        {
            url:"adminapi/user/delete",
            data:user_id,
            method:'delete'
        })
}

// 获取字典列表
export const getDictList = () =>{
    return axios.request({
        url:"adminapi/dict",
        method:"get"
    })
}

// 字典更新
export const updateDict = dict => {
    return axios.request({
        url:'adminapi/dict/update',
        data:dict,
        method:'put',
    })
}

// 字典删除
export const delDict = dict_id =>{
    return axios.request({
            url:"adminapi/dict/delete",
            data:dict_id,
            method:'delete'
        })
}

// 字典添加
export const createDict = dict =>{
    return axios.request({
        url:"adminapi/dict/create",
        data:dict,
        method:'post',
    })
}

// 部门列表
export const getDeptList = () =>{
    return axios.request({
        url:"adminapi/dept",
        method:"get"
    })
}
/*代码生成*/
//获取列表
export const getTableList = (field = {}) => {
    return axios.request({
        url:"adminapi/codebase/getTableList",
        method:"get",
        params: field
    })
}
//获取目录
export const getDirList = (field) => {
  return axios.request({
      url:"adminapi/codebase/getDirList",
      method:"get",
      params: field
  })
}
//获取文件内容
export const getFileContents = (field) => {
  return axios.request({
      url:"adminapi/codebase/getFileContent",
      method:"get",
      params: field
  })
}
//控制器和模型路径验证
export const cmVerifyPath = ({ moduleName, selectTableName, alias }) => {
  return axios.request({
      url:"adminapi/codebase/verifyCmPath",
      method:"post",
      data: {
        moduleName,
        selectTableName,
        alias
      }
  })
}
//生成控制器和模型
export const codeCreateMC = () => {
  return axios.request({
      url:"adminapi/codebase/creatAllFiles",
      method:"post"
  })
}
//获取数据表字段
export const getTableField = (table) => {
  return axios.request({
      url:"adminapi/codebase/getTableFields",
      method:"get",
      params: {
        table
      }
  })
}
//生成前台页面
export const codeVerifyPath = ({ table, path, file, component, list, search, edit, alias, types, api, pk, menu }) => {
  return axios.request({
      url:"adminapi/codebase/verifyVuePath",
      method:"post",
      data: {
        table,
        path,
        file,
        component,
        list,
        search,
        edit,
        alias,
        types,
        api,
        pk,
        menu
      }
  })
}
//生成Vue文件
export const codeCreateVue = () => {
  return axios.request({
      url:"adminapi/codebase/createVueFile",
      method:"get"
  })
}