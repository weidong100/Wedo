import axios from '@/libs/api.request'

export const getMenuData = (field) => {
	return axios.request({
		url:"restapi/sysMenu",
		method:"get",
		params:field
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
export const codeVerifyPath = ({ table, path, file, component, list, search, edit, alias, types, conf, api, pk, menu, buttons }) => {
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
        conf,
        api,
        pk,
        menu,
        buttons
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