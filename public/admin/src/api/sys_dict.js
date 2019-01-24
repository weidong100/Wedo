import axios from '@/libs/api.request'

//sysDict 列表接口
		export const getSysDictData = (field) => {
			return axios.request({
				url:"restapi/sysDict",
				method:"get",
				params:field
			})
		}
		//sysDict 添加接口
		export const createSysDict = (field) => {
			return axios.request({
				url:"restapi/sysDict/create",
				method:"post",
				data:field
			})
		}
		//sysDict 编辑接口
		export const updateSysDict = (field) => {
			return axios.request({
				url:"restapi/sysDict/" + field.id,
				method:"put",
				data:field
			})
		}
		//sysDict 删除接口
		export const deleteSysDict = (id) => {
			return axios.request({
				url:"restapi/sysDict/" + id,
				method:"delete"
			})
		}