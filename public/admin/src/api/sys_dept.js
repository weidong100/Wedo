import axios from '@/libs/api.request'
//sysDept 列表接口
export const getSysDeptData = (field) => {
	return axios.request({
		url: "restapi/sysDept",
		method: "get",
		params: field
	})
}
//sysDept 添加接口
export const createSysDept = (field) => {
	return axios.request({
		url: "restapi/sysDept/create",
		method: "post",
		data: field
	})
}
//sysDept 编辑接口
export const updateSysDept = (field) => {
	return axios.request({
		url: "restapi/sysDept/" + field.id,
		method: "put",
		data: field
	})
}
//sysDept 删除接口
export const deleteSysDept = (id) => {
	return axios.request({
		url: "restapi/sysDept/" + id,
		method: "delete"
	})
}