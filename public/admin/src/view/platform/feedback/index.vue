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
      >
        
        <Button style="marginLeft: 2px;" type="success" icon="md-archive" slot="afterSearch" @click="exportExcel">导出</Button>
        
        <Form ref="sform" :model="formField" slot="drawer">
                <Row :gutter="32">
                    <Col span="12">
                        <FormItem label="反馈内容" label-position="top" prop="feedback_content" required>
                            <Input type="textarea" :row="4" v-model="formField.feedback_content" placeholder="反馈内容" />
                        </FormItem>
                    </Col>
                    
                </Row>
                <Row :gutter="32">
                    <Col span="12">
                        <FormItem label="反馈图片" label-position="top" prop="imgs" required>
                            <Input type="file" v-model="formField.imgs" placeholder="请选择反馈图片" />
                        </FormItem>
                    </Col>
                </Row>
               
                <FormItem>
                    <Button type="primary" @click="handleForm()" >保存</Button>
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
import { getFeedBackList,createFeedBack,updateFeedBack,deleteFeedBack } from '@/api/data'
export default {
  name: 'feedback_page',
  components: {
    Tables
  },
  data () {
    return {
      loading: true,
      //分页配置
      page: {
        page: 1,
        total: 0,
        pageSize: 10
      },
      columns:[
        {title: '反馈平台', key: 'feedback_source'},
        {title: '反馈者',   key: 'name'},
        {title: '反馈内容', key: 'feedback_content'},
        {title: '图片',     key: 'imgs'},
        {title: '联系电话',  key: 'tel'},
        {title: '回复内容', key: 'feedback_reply'},
        {title: '反馈时间', key: 'create_time'},
        {title: '状态',     key: 'status'},
        {
          title: '操作',
          key: 'handle',
          button: [
            (h, params, vm) => {
                return h('Button',{
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
                    // vm.$emit('input', params.tableData.filter((item, index) => index !== params.row.initRowIndex))
                  }
                }
              }, [
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
              ])
            },
            
          ]
        }
      ],
      tableData: [],
      drawer:{
        title: '',
        show: false
      },
      myModal: {
        title: '',
        show: false
      },
      
      formField: {
        feedback_content: '',
        feedback_source: '',
        feedback_userId: '',
        create_time: '',
        status: '',
        tel: '',
        imgs: '',
        feedback_reply: '',
        name: '',
        id: '',
        save_type: ''
      },
     
    }
  },
  methods: {
    //监听分页
    handlePage (page, size) {
      this.loading = true
      getFeedBackList({ page, pageSize: size }).then(res => {
        this.page.total = res.data.count
        this.tableData = res.data.data
        this.loading = false
      })  
    },
    handleMySearch (){
      let field = this.searchField
      console.log(field)
      getFeedBackList(field).then(res => {
        console.log(res)
          this.tableData = res.data.data
          this.page.page  = 1
          this.page.total = res.data.count
      })
    },
    //监听添加
    addData () {
        this.opentype = 'drawer'
        this.drawer.title = '反馈添加'
        this.drawer.show = true
        this.formReset()
        this.formField.save_type = 1
    },
    //监听编辑
    editData (oldData, vm) {
      this.opentype = 'drawer'
        this.drawer.title = '反馈编辑'
        for (let key in this.formField){
          this.formField[key] = oldData[key]
        }
        this.formField.id = oldData.id
        this.formField.save_type = 2
        this.drawer.show = true
    },
    //处理表单提交
    handleForm () {
      console.log(this.formField)
      if(this.formField.save_type == 1){
          createFeedBack(this.formField).then(res => {
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
          updateFeedBack(this.formField).then(res => {
            if(res.data.code == 200){
              this.drawer.show = false
              this.$Message.success(res.data.msg);
              this.reloadTable()
            }else{
              this.$Message.error(res.data.msg);
            }
          })
      }
      //提交表单在这里写
      //
    },
    //监听删除事件
    handleDelete (params, vm) {
      let id = params.row.id
      deleteFeedBack(id).then(res => {
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
      //
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
        getFeedBackList({ page: curr, pageSize: this.page.pageSize}).then(res => {
          this.page.total = res.data.count
          this.tableData = res.data.data
          this.page.page = curr
          this.loading = false
        })
    },
  },
  //挂载后方法
  mounted () {
    let {
      page,
      pageSize
    } = this.page
    getFeedBackList({ page, pageSize }).then(res => {
      this.page.total = res.data.count
      this.tableData = res.data.data
      this.loading = false
    })
  }
}
</script>

<style>

</style>

