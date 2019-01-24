import axios from '@/libs/api.request'
		//sysLog 列表接口
		export const getSysLogData = (field) => {
			return axios.request({
				url:"restapi/sysLog",
				method:"get",
				params:field
			})
		}
		//sysLog 添加接口
		export const createSysLog = (field) => {
			return axios.request({
				url:"restapi/sysLog/create",
				method:"post",
				data:field
			})
		}
		//sysLog 编辑接口
		export const updateSysLog = (field) => {
			return axios.request({
				url:"restapi/sysLog/" + field.id,
				method:"put",
				data:field
			})
		}
		//sysLog 删除接口
		export const deleteSysLog = (id) => {
			return axios.request({
				url:"restapi/sysLog/" + id,
				method:"delete"
			})
		}