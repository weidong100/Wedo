import axios from '@/libs/api.request'

export const login = ({ userName, password }) => {
  const data = {
    username:userName,
    password,
    grant_type:'password',
    client_id:'testclient',
    client_secret:'qwert'
  }
  return axios.request({
    url: '/adminapi/login',
    data,
    method: 'post',
    headers:{'Authorization':'bearer dGVzdGNsaWVudDpxd2VydA=='}
  })
}

export const getUserInfo = () => {
  return axios.request({
    url: '/adminapi/User/read',
    method: 'get'
  })
}

export const logout = (token) => {
  return axios.request({
    url: 'logout',
    method: 'post'
  })
}

export const getUnreadCount = () => {
  return axios.request({
    url: 'message/count',
    method: 'get'
  })
}

export const getMessage = () => {
  return axios.request({
    url: 'message/init',
    method: 'get'
  })
}

export const getContentByMsgId = msg_id => {
  return axios.request({
    url: 'message/content',
    method: 'get',
    params: {
      msg_id
    }
  })
}

export const hasRead = msg_id => {
  return axios.request({
    url: 'message/has_read',
    method: 'post',
    data: {
      msg_id
    }
  })
}

export const removeReaded = msg_id => {
  return axios.request({
    url: 'message/remove_readed',
    method: 'post',
    data: {
      msg_id
    }
  })
}

export const restoreTrash = msg_id => {
  return axios.request({
    url: 'message/restore',
    method: 'post',
    data: {
      msg_id
    }
  })
}
