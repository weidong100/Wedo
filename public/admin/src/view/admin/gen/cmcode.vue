<template>
  <Row>
    <i-col span="12">
      <Card style="margin: 0 5px 5px;">
        <p slot="title" >
            <Icon type="md-timer"></Icon>
            生成控制器及模型
        </p>
        <Spin size="large" fix v-if="spinShow"></Spin>
        <Form :model="formField" :label-width="80" ref="sform" v-show="formShow">
          <FormItem label="模块" prop="module" required>
            <Dropdown placement="bottom-start" @on-click="handleDropdownClick" style="width:200px;">
                <a href="javascript:void(0)">
                   <Input v-model="formField.module" placeholder="请输入模块名" /> 
                </a>
                <DropdownMenu slot="list">
                    <DropdownItem  v-for="item in moduleList" :name="item">{{ item }}</DropdownItem>
                </DropdownMenu>
            </Dropdown>
          </FormItem>

          <FormItem label="数据表" required>
              <CheckboxGroup v-model="formField.tables">
                <Row v-for="item in tableList">
                  <i-col span="12">
                    <Checkbox :label="item.fullname"></Checkbox> 
                  </i-col> 
                  <i-col span="10">
                    <Input :placeholder="`控制器名，默认`+item.simplename" v-model="tableAlias[item.fullname]" />
                  </i-col>
                </Row>
              </CheckboxGroup>
          </FormItem>

          <FormItem>
              <Button type="primary" @click="createMC">生成</Button>
          </FormItem>
        </Form>
        
      </Card>
    </i-col>
    <i-col span="12">
      <Card style="margin: 0 5px 5px;">
        <p slot="title">
            <Icon type="ios-folder-open"></Icon>
            预览
        </p>
        <Breadcrumb slot="extra">
            <BreadcrumbItem v-for="item in breadcrumbList">{{ item }}</BreadcrumbItem>
        </Breadcrumb>
        <Spin size="large" fix v-if="fileSpinShow"></Spin>
        <Row :gutter="16">
            <template v-for="file in dirList" >
              <Col span="4" v-if="file.type == 1" :key="currDir + file.name">
                <Card style="margin: 0 0 5px; text-align: center;" @dblclick.native.once="changeDir(file.name)" >
                  <Icon :size="25" type="ios-folder-outline" />
                  <p class="icon-code my-word" >{{ file.name }}</p>
                </Card>
              </Col>
              <Col span="4" v-else="file.type == 2" :key="currDir + file.name">
                <Card style="margin: 0 0 5px; text-align: center;" @dblclick.native="getFileContent(file.name)">
                  <Icon :size="25" type="md-document"/>
                  <p class="icon-code my-word">{{ file.name }}</p>
                </Card>
              </Col>
            </template>
            <Col span="4" v-show="currDirLength > 1" @click.native="deleteDir">
              <Card style="margin: 0 0 5px; text-align: center;">
                <Icon :size="25" type="ios-undo-outline"/>
                <p class="icon-code my-word">返回</p>
              </Card>
            </Col>
        </Row>
      </Card>
    </i-col>
    <Modal v-model="myModal" draggable scrollable :width="70" footer-hide>
        <p slot="header">
            <Icon type="md-code"></Icon>
            <span>{{ codeTitle }}</span>
        </p>
        <div>
          <markdown-editor v-model="fileContent" :options="editor" @on-cancel="setFileContentNull"/>
        </div>
    </Modal>
  </Row>
</template>

<script>
import MarkdownEditor from '_c/markdown'
import { getTableList, getDirList, codeCreateMC, getFileContents, cmVerifyPath } from '@/api/codebase'
export default {
  name: 'cm_pages',
  components: {
    MarkdownEditor
  },
  data () {
    return {
      formField: {
        module: '',
        tables: []
      },
      tableList: [],
      moduleList: [],
      dirList: [],
      currDir: '',
      codeTitle: 'Code',
      currDirLength: 0,
      breadcrumbList: [],
      fileContent: '',
      myModal: false,
      tableAlias: {},
      spinShow: true,
      fileSpinShow: false,
      formShow:false,
      editor: {
        toolbar: ["preview", "side-by-side", "fullscreen"]
      }
    }
  },
  watch: {
    currDir: function(newDir){
      console.log(newDir)
      this.getDirFiles(newDir)
    }
  },
  computed: {
    
  },
  methods: {
    handleDropdownClick (name) {
      this.formField.module = name
      this.currDir = name
    },
    createMC () {
      if(this.formField.module == ''){
        this.$Message.error('请输入模块名');
        return
      }
      if(this.formField.tables.length == 0){
        this.$Message.error('请选择一项数据表');
        return
      }
      cmVerifyPath({
        moduleName: this.formField.module,
        selectTableName: this.formField.tables,
        alias: this.tableAlias
      }).then(res => {
        if(res.data.code == 500){
          let content = ''
          res.data.data.forEach(item => {
            content += item.info + '<br>'
          })
          content += '是否覆盖？'
          this.$Modal.confirm({
              title: '警告',
              content: content,
              okText: '覆盖',
              cancelText: '取消',
              onOk: () => {
                  codeCreateMC().then(res => {
                    this.$Notice.info({
                      title: '通知',
                      duration: 15,
                      render: h => {
                          return h('span', {
                            domProps: {
                              innerHTML: res.data
                            }
                          })
                      }
                    });
                  })
              }
          })
        }else{
          this.$Notice.info({
            title: '通知',
            duration: 15,
            render: h => {
                return h('span',{
                  domProps: {
                    innerHTML: res.data
                  }
                })
            }
          })
        }
      })
    },
    getDirFiles (dir) {
      this.fileSpinShow = true
      getDirList({ path: dir }).then(res => {
        console.log(res)
        this.fileSpinShow = false
        this.dirList = res.data.data
        this.currDirLength = dir.split('/').length
        this.breadcrumbList = dir.split('/')
      })
    },
    changeDir (name) {
      this.currDir += '/' + name
    },
    deleteDir () {
      let dirArr = this.currDir.split('/')
      if(dirArr.length == 1) return
      dirArr.pop()
      this.currDir = dirArr.join('/')
    },
    getFileContent(name){
      let path = this.currDir + '/' + name
      // this.myModal = true
      getFileContents({ path }).then(res => {
        console.log(res)
        this.fileContent = res.data.data
        this.codeTitle = 'Code --' + path
        this.myModal = true
      })
    },
    setFileContentNull () {
      this.fileContent = ''
    }
  },
  mounted () {
    getTableList().then(res => {
      if(res.data.code == 200){
        this.spinShow = false
        this.formShow = true
        this.tableList = res.data.data.tables
        this.moduleList = res.data.data.modules
      }
    })
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
