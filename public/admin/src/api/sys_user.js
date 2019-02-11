import axios from '@/libs/api.request'
		//sysUser 列表接口
		export const getSysUserData = (field) => {
			return axios.request({
				url: "restapi/sysUser",
				method: "get",
				params: field
			})
		}
		//sysUser 添加接口
		export const createSysUser = (field) => {
			return axios.request({
				url: "restapi/sysUser/create",
				method: "post",
				data: field
			})
		}
		//sysUser 编辑接口
		export const updateSysUser = (field) => {
			return axios.request({
				url: "restapi/sysUser/" + field.id,
				method: "put",
				data: field
			})
		}
		//sysUser 删除接口
		export const deleteSysUser = (id) => {
			return axios.request({
				url: "restapi/sysUser/" + id,
				method: "delete"
			})
		}
		//初始化部门ID下拉数据
		export const getDeptIdSelectData = () => {
			return axios.request({
				url: "restapi/sysDept",
				method: "get"
			})
		}
		//获取角色下拉数据
		export const getRoleData = (dept_id) => {
			return axios.request({
				url: "ordapi/sys_dept/getRolesByDept",
				method: "get",
				params: {
					dept_id
				}
			})
		}
		