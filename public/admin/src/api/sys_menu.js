import axios from '@/libs/api.request'

//SysMenu 列表接口
export const getMenuData = (field) => {
	return axios.request({
		url:"restapi/sysMenu",
		method:"get",
		params:field
	})
}
//SysMenu 添加接口
export const createMenu = (field) => {
	return axios.request({
		url:"restapi/sysMenu/create",
		method:"post",
		data:field
	})
}
//SysMenu 编辑接口
export const updateMenu = (field) => {
	return axios.request({
		url:"restapi/sysMenu/" + field.id,
		method:"put",
		data:field
	})
}
//SysMenu 删除接口
export const deleteMenu = (id) => {
	return axios.request({
		url:"restapi/sysMenu/" + id,
		method:"delete"
	})
}