<template>
  <div class="my-editor">
    <p>{{ title }}</p>
    <vue-neditor-wrap :value="value" :config="myConf" :destroy="false" @input="handelInput"></vue-neditor-wrap>
  </div>
</template>

<script>
import VueNeditorWrap from 'vue-neditor-wrap'
export default {
  name: 'Neditor',
  components: {
      VueNeditorWrap
  },
  props: {
    config: {
      type: Object,
      default () {
        return {}
      }
    },
    value: {
      type: String,
      default: ''
    },
    title: {
      type: String,
      default: '内容'
    }
  },
  data() {
    return {
      myConf: {
            // 如果需要上传功能,找后端小伙伴要服务器接口地址
            serverUrl: '/api/web/upload/ueditor',
            // 你的UEditor资源存放的路径,相对于打包后的index.html
            UEDITOR_HOME_URL: '/NEditor/',
            // 编辑器不自动被内容撑高
            autoHeightEnabled: false,
            // 初始容器高度
            initialFrameHeight: 240,
            // 初始容器宽度
            initialFrameWidth: '100%',
            // 关闭自动保存
            enableAutoSave: false,
            elementPathEnabled: false
      }
    }
  },
  methods: {
    handelInput (content) {
      this.$emit('input', content)
    }
  },
  mounted() {
    this.myConf = Object.assign({}, this.myConf, this.config)
  }
}
</script>
<style>
.my-editor{
  margin-top: 20px;
  margin-bottom: 20px;
}
.edui-editor{
  z-index: 800 !important;
}
</style>