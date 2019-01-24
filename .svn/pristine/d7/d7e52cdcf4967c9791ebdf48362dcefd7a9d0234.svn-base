<template>
    <div>
        <Card>
            <tables 
            ref="tables" 
            pageShow
            searchable
            search-place="top"
            :loading="loading"
            v-model="tableData"
            :page="page" 
            :columns="columns" 
            :drawer="drawer"
            :myModal="myModal"
            @on-delete="handleDelete" 
            @page-change="handlePage" 
            @table-add-data="addData"
            @table-edit-data="editData"
            @my-modal-close="handleModalClose"
            @on-my-modal-ok="handleMyModalOk"
            >
                <!--表头搜索-->
                <template slot="mySearch">
                    <Select v-model="searchField.type" class="search-col" placeholder="请选择日志类型">
                        <Option value="">选项一</Option>
                    </Select>
                    <Input v-model="searchField.title" class="search-input" placeholder="请输入日志标题"/>
                    <Button class="search-btn" type="primary" icon="md-search" @click="handleMySearch">搜索</Button>
                </template>
                <!--表头导出-->
                <Button style="marginLeft: 2px;" type="success" icon="md-archive" slot="afterSearch" @click="exportExcel">导出</Button>
                <!--添加编辑表单-->
                <Form ref="sform" :model="formField" slot="drawer">
                    <Row :gutter="32">
                        <Col span="12">
                            <FormItem label="日志类型" label-position="top" prop="type" required>
                                <Select v-model="formField.type" placeholder="请选择日志类型">
                                    <Option value="">请选择日志类型</Option>
                                </Select>
                            </FormItem>
                        </Col>
                        <Col span="12">
                            <FormItem label="日志标题" label-position="top" prop="title" required>
                                <Input v-model="formField.title" placeholder="请输入日志标题"/>
                            </FormItem>
                        </Col>
                        <Col span="12">
                            <FormItem label="创建时间" label-position="top" prop="create_time" required>
                                <DatePicker type="datetime" placeholder="请选择创建时间" v-model="formField.create_time" style="width:100%;"></DatePicker>
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col>
                          <SingleUpload title="创建者" :up="uploadInit.create_by" :params="uploadParam.create_by" :format="uploadFormat.create_by" :maxSize="uploadMaxSize.create_by" :action="uploadAction" @on-remove="uploadRemove.create_by"></SingleUpload>
                        </Col>
                    </Row>
                    <Row>
                        <Col>
                          <SingleUpload title="更新时间" :up="uploadInit.update_time" :params="uploadParam.update_time" :format="uploadFormat.update_time" :maxSize="uploadMaxSize.update_time" :action="uploadAction" @on-remove="uploadRemove.update_time"></SingleUpload>
                        </Col>
                    </Row>
                    <FormItem>
                        <Button type="primary" @click="handleForm()">保存</Button>
                        <Button type="warning" style="marginLeft: 8px" @click="formReset(false)">重置</Button>
                        <Button style="marginLeft: 8px" @click="drawer.show = false">取消</Button>
                    </FormItem>
                </Form>
            </tables> 
        </Card>
    </div>
</template>
  
<script>
import Tables from '_c/tables'
import SingleUpload from '_c/uploads/single-upload.vue'
import { getSysLogData,updateSysLog,createSysLog,deleteSysLog } from '@/api/sys_log'

export default {
  name: 'wd_sys_log_pages',
  components: {
    Tables,
    SingleUpload  },
  data () {
    return {
      loading: true,
      //分页配置
      page: {
        page: 1,
        total: 0,
        pageSize: 10
      },
      searchField: {
        type: '',
        title: ''
      },
      columns: [
        { title: '日志类型', key: 'type' },
        { title: '日志标题', key: 'title' },
        { title: '服务ID', key: 'service_id' },
        { title: '创建者', key: 'create_by' },
        { title: '创建时间', key: 'create_time' },
        { title: '更新时间', key: 'update_time' },
        {
          title: '操作',
          key: 'handle',
          button: [
            (h, params, vm) => {
              return h('Button', {
                props: {
                  type: 'success',
                  size: 'small',
                  icon: 'md-create'
                },
                style: {
                  marginRight: '5px'
                },
                on: {
                  'click' : () => {
                    vm.$emit('table-edit-data', params.row, vm)
                  }
                }
              },'编辑')
            },
            (h, params, vm) => {
              return h('Poptip', {
                  props: {
                    confirm: true,
                    title: '你确定要删除吗?'
                  },
                  on: {
                    'on-ok': () => {
                      vm.$emit('on-delete', params, vm)
                    }
                  }
                }, 
                [
                  h('Button', {
                    props: {
                      type: 'error',
                      size: 'small',
                      icon: 'md-trash'
                    },
                    style: {
                      marginRight: '5px'
                    }
                  },'删除')
                ]
              )
            }
          ]
        }
      ],
      tableData: [],
      drawer: {
        title: '',
        show: false
      },
      myModal: {
        title: '',
        show: false,
        width: '800px'
      },
      formField: {
        id: '',
        type: '',
        title: '',
        create_time: ''
      },
      uploadAction: '',
      uploadInit: {
        create_by: {
          name: '',
          url: '',
          status: 'finished'
        },
        update_time: {}      
      },
      uploadParam: {
        create_by: {},
        update_time: {}        
      },
      uploadFormat: {
        create_by: ['jpg','png'],
        update_time: ['xls']        
      },
      uploadMaxSize: {
        create_by: 2048,
        update_time: 2048        
      },
      uploadRemove: {
        create_by: (file) => {
          console.log(file)
        },
        update_time: (file) => {
          console.log(file)
        }        
      }    
    }
  },
  methods: {
    //监听分页
    handlePage (page, size) {
      console.log('分页的方法在这里写')
      this.loading = true
      getSysLogData({ page, pageSize: size }).then(res => {
        this.page.total = res.data.count
        this.tableData = res.data.data
        this.loading = false
      })  
    },
    //查询方法
    handleMySearch () {
      console.log('查询的方法在这里写')
      let field = this.searchField
      getSysLogData(field).then(res => {
        console.log(res)
        this.tableData = res.data.data
        this.page.page  = 1
        this.page.total = res.data.count
      })
    },
    //监听添加
    addData () {
      this.opentype = 'drawer'
      console.log('新增的方法在这里写')
      this.drawer.title = '添加'
      this.drawer.show = true
      this.formReset()
      this.formField.save_type = 1
    },
    //监听编辑
    editData (oldData, vm) {
      this.opentype = 'drawer'
      this.drawer.title = '编辑'
      for (let key in this.formField){
        this.formField[key] = oldData[key]
      }
      this.formField.id = oldData.id
      this.formField.save_type = 2
      this.drawer.show = true
      console.log('编辑的方法在这里写')
    },
    //处理表单提交
    handleForm () {
      if(this.formField.save_type == 1){
        createSysLog(this.formField).then(res => {
          if(res.data.code == 200){
            this.drawer.show = false
            this.$Message.success(res.data.msg);
            this.page.total++
            let lastP = Math.ceil(this.page.total / this.page.pageSize)
            this.reloadTable(lastP)
          }else{
            this.$Message.error(res.data.msg);
          }
        })
      }else if(this.formField.save_type == 2){
        updateSysLog(this.formField).then(res => {
          if(res.data.code == 200){
            this.drawer.show = false
            this.$Message.success(res.data.msg);
            this.reloadTable()
          }else{
            this.$Message.error(res.data.msg);
          }
        })
      }
    },
    //监听删除事件
    handleDelete (params, vm) {
      let id = params.row.id      
      deleteSysLog(id).then(res => {
        if(res.data.code == 200){
          this.$Message.success(res.data.msg);
          this.page.total--
          vm.$emit('input', params.tableData.filter((item, index) => index !== params.row.initRowIndex))
          if((this.page.total % this.page.pageSize) == 0){
            this.reloadTable(this.page.page - 1);
          } 
        }else{
          this.$Message.error(res.data.msg);
        }
      })
    },
    //监听弹出框关闭
    handleModalClose() {

    },
    //监听弹出框确认按钮
    handleMyModalOk() {

    },
    //表单重置
    formReset (all = true) {
      this.$refs.sform.resetFields();
      if(all){
        this.formField.id = ''
      }
    },
    //导出
    exportExcel () {
      this.$refs.tables.exportCsv({
        filename: `table-${(new Date()).valueOf()}.csv`
      })
    },
    //表格重载
    reloadTable (page) {
      let curr = page ? page : this.page.page
      this.loading = true
      getSysLogData({ page: curr, pageSize: this.page.pageSize }).then(res => {
        this.page.total = res.data.count
        this.tableData = res.data.data
        this.page.page = curr
        this.loading = false
      })
    }
  },
  //挂载后方法
  mounted () {
    let {
      page,
      pageSize
    } = this.page
    getSysLogData({ page, pageSize }).then(res => {
      this.page.total = res.data.count
      this.tableData = res.data.data
      this.loading = false
    })
  }
}
</script>
<style>

</style>