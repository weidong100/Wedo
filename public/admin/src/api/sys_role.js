import axios from '@/libs/api.request'

//SysRole 列表接口
export const getRoleData = (field) => {
	return axios.request({
		url:"restapi/sysRole",
		method:"get",
		params:field
	})
}
//SysRole 添加接口
export const createRole = (field) => {
	return axios.request({
		url:"restapi/sysRole/create",
		method:"post",
		data:field
	})
}
//SysRole 编辑接口
export const updateRole = (field) => {
	return axios.request({
		url:"restapi/sysRole/" + field.id,
		method:"put",
		data:field
	})
}
//SysRole 删除接口
export const deleteRole = (id) => {
	return axios.request({
		url:"restapi/sysRole/" + id,
		method:"delete"
	})
}
//权限配置
export const roleAuth = ({ role_id, menus }) => {
  	return axios.request({
	  url: '/restapi/sysRole/setRoleAuth',
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
		url: '/restapi/sysDept',
		method: 'get',
		
	})
}
export const getMenuData = (field = {}) => {
	return axios.request({
	  url: 'restapi/sysMenu',
	  method: 'get',
	  params: field
	})
  }