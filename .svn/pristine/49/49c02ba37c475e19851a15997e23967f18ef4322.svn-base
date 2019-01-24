<template>
  <Row>
    <i-col span="12">
      <Card style="margin: 0 5px 5px;">
        <p slot="title">
            <Icon type="ios-folder-open"></Icon>
            Application
        </p>
        <Breadcrumb slot="extra">
            <BreadcrumbItem v-for="item in breadcrumbAppList">{{ item }}</BreadcrumbItem>
        </Breadcrumb>
        <Spin size="large" fix v-if="fileAppSpinShow"></Spin>
        <Row :gutter="16">
            <template v-for="file in dirAppList" >
              <Col span="4" v-if="file.type == 1" :key="currAppDir + file.name">
                <Card style="margin: 0 0 5px; text-align: center;" @dblclick.native.once="changeDir(file.name, 'App')" >
                  <Icon :size="25" type="ios-folder-outline" />
                  <p class="icon-code my-word" >{{ file.name }}</p>
                </Card>
              </Col>
              <Col span="4" v-else="file.type == 2" :key="currAppDir + file.name">
                <Card style="margin: 0 0 5px; text-align: center;" @dblclick.native="getFileContent(file.name, 'App')">
                  <Icon :size="25" type="md-document"/>
                  <p class="icon-code my-word">{{ file.name }}</p>
                </Card>
              </Col>
            </template>
            <Col span="4" v-show="breadcrumbAppList.length > 1" @click.native="deleteDir('App')">
              <Card style="margin: 0 0 5px; text-align: center;">
                <Icon :size="25" type="ios-undo-outline"/>
                <p class="icon-code my-word">返回</p>
              </Card>
            </Col>
        </Row>
      </Card>
    </i-col>
    <i-col span="12">
      <Card style="margin: 0 5px 5px;">
        <p slot="title">
            <Icon type="ios-folder-open"></Icon>
            View
        </p>
        <Breadcrumb slot="extra">
            <BreadcrumbItem v-for="item in breadcrumbViewList">{{ item }}</BreadcrumbItem>
        </Breadcrumb>
        <Spin size="large" fix v-if="fileViewSpinShow"></Spin>
        <Row :gutter="16">
            <template v-for="file in dirViewList" >
              <Col span="4" v-if="file.type == 1" :key="currViewDir + file.name">
                <Card style="margin: 0 0 5px; text-align: center;" @dblclick.native.once="changeDir(file.name, 'View')" >
                  <Icon :size="25" type="ios-folder-outline" />
                  <p class="icon-code my-word" >{{ file.name }}</p>
                </Card>
              </Col>
              <Col span="4" v-else="file.type == 2" :key="currViewDir + file.name">
                <Card style="margin: 0 0 5px; text-align: center;" @dblclick.native="getFileContent(file.name, 'View')">
                  <Icon :size="25" type="md-document"/>
                  <p class="icon-code my-word">{{ file.name }}</p>
                </Card>
              </Col>
            </template>
            <Col span="4" v-show="breadcrumbViewList.length > 1" @click.native="deleteDir('View')">
              <Card style="margin: 0 0 5px; text-align: center;">
                <Icon :size="25" type="ios-undo-outline"/>
                <p class="icon-code my-word">返回</p>
              </Card>
            </Col>
        </Row>
        
        
      </Card>
    </i-col>
    <Modal v-model="myModal" draggable scrollable title="Code" :width="70" footer-hide>
        <p slot="header">
            <Icon type="md-code"></Icon>
            <span>Code</span>
        </p>
        <div>
          <markdown-editor v-model="fileContent" :options="editor" @on-cancel="setFileContentNull"/>
        </div>
    </Modal>
  </Row>
</template>

<script>
import MarkdownEditor from '_c/markdown'
import {  getDirList, getFileContents } from '@/api/data'
export default {
  name: 'cm_pages',
  components: {
    MarkdownEditor
  },
  data () {
    return {
      dirAppList: [],
      dirViewList: [],
      currAppDir: '',
      currViewDir: '',
      breadcrumbAppList: [],
      breadcrumbViewList: [],
      fileContent: '',
      myModal: false,
      fileAppSpinShow: false,
      fileViewSpinShow: false,
      editor: {
        toolbar: ["preview", "side-by-side", "fullscreen"]
      }
    }
  },
  watch: {
    currAppDir: function(newDir){
      this.getDirFiles(newDir, 'App')
    },
    currViewDir: function(newDir){
      this.getDirFiles(newDir, 'View')
    }
  },
  methods: {
    getDirFiles (dir, type) {
      this.$data['file' + type + 'SpinShow'] = true
      getDirList({ path: dir, type }).then(res => {
        this.$data['file' + type + 'SpinShow'] = false
        this.$data['dir' + type + 'List'] = res.data.data
        this.$data['breadcrumb' + type + 'List'] = dir.split('/')
      })
    },
    changeDir (name, type) {
      this.$data['curr' + type + 'Dir'] += '/' + name
    },
    deleteDir (type) {
      let dirArr = this.$data['curr' + type + 'Dir'].split('/')
      if(dirArr.length == 0) return
      dirArr.pop()
      this.$data['curr' + type + 'Dir'] = dirArr.join('/')
    },
    getFileContent(name, type){
      let path = this.$data['curr' + type + 'Dir'] + '/' + name
      // this.myModal = true
      getFileContents({ path, type }).then(res => {
        this.fileContent = res.data.data
        this.myModal = true
      })
    },
    setFileContentNull () {
      this.fileContent = ''
    }
  },
  mounted () {
    this.getDirFiles(this.currAppDir, 'App')
    this.getDirFiles(this.currViewDir, 'View')
  }
}
</script>

<style lang="less" scoped>
.icon-code{
  margin: 10px 0 5px;
}
.intro-p{
  margin-bottom: 10px;
}
.my-word{
  moz-user-select: -moz-none; 
  -moz-user-select: none; 
  -o-user-select:none; 
  -khtml-user-select:none; 
  -webkit-user-select:none; 
  -ms-user-select:none; 
  user-select:none;
}
</style>
