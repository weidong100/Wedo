<style lang="less">
  @import './login.less';
</style>

<template>
  <div class="login">
    <div class="login-con">
      <Card icon="log-in" title="欢迎登录" :bordered="false">
        <div class="form-con">
          <login-form @on-success-valid="handleSubmit"></login-form>
          <p class="login-tip">输入任意用户名和密码即可</p>
        </div>
      </Card>
    </div>
  </div>
</template>

<script>
import LoginForm from '_c/login-form'
import { mapActions } from 'vuex'
import { initMenu } from '@/router/dynamic-routers'
export default {
  components: {
    LoginForm
  },
  methods: {
    ...mapActions([
      'handleLogin',
      'getUserInfo',
      'getUserMenu'
    ]),
    handleSubmit ({ userName, password }) {
      this.handleLogin({ userName, password }).then(res => {
          
        if(res.data.code == 200){
            this.getUserInfo().then(res => {
                if(res.data.code == 200){
                    this.getUserMenu().then(mres => {
                        const data = mres.data.data
                        if(mres.data.code == 200){
                            initMenu(data,this.$router)
                        }else{
                            this.$Message.error('获取菜单失败！');
                        }
                    })
                    this.$router.push({
                        name: this.$config.homeName
                    })
                }else{
                    this.$Message.error('获取用户信息失败！');
                    this.$router.push({
                        name: 'login'
                    }) 
                }
            }) 
        }else{
            if(res.data.code == 401){
                this.$Message.error('用户名或密码错误！');
            }
        }
        
      })
    }
  }
}
</script>

<style>

</style>
