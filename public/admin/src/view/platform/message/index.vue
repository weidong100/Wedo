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
                        <FormItem label="文案名称" label-position="top" prop="name" required>
                            <Input v-model="formField.name" placeholder="请输入文案名称" />
                        </FormItem>
                    </Col>
                    <Col span="12">
                        <FormItem label="文案类型" label-position="top" prop="clause_type" required>
                            <Input v-model="formField.clause_type" placeholder="请选择文案类型" />
                        </FormItem>
                    </Col>
                    
                </Row>
                <Row :gutter="32">
                    <Col span="12">
                        <FormItem label="文案内容" label-position="top" prop="content">
                            <Input type="textarea" :row="4" v-model="formField.content" placeholder="请输入文案内容" />
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
import { getClauseList,createClause,updateClause,deleteClause } from '@/api/data'
export default {
  name: 'clause_page',
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
        {title: '文案类型', key: 'name'},
        {title: '创建时间', key: 'create_time'},
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
        content: '',
        name: '',
        clause_type: '',
        id: '',
        save_type: ''
      },
     
    }
  },
  methods: {
    //监听分页
    handlePage (page, size) {
      this.loading = true
      getClauseList({ page, pageSize: size }).then(res => {
        this.page.total = res.data.count
        this.tableData = res.data.data
        this.loading = false
      })  
    },
    handleMySearch (){
      let field = this.searchField
      console.log(field)
      getClauseList(field).then(res => {
        console.log(res)
          this.tableData = res.data.data
          this.page.page  = 1
          this.page.total = res.data.count
      })
    },
    //监听添加
    addData () {
        this.opentype = 'drawer'
        this.drawer.title = '文案添加'
        this.drawer.show = true
        this.formReset()
        this.formField.save_type = 1
    },
    //监听编辑
    editData (oldData, vm) {
      this.opentype = 'drawer'
        this.drawer.title = '文案编辑'
        for (let key in this.formField){
          this.formField[key] = oldData[key]
        }
        this.formField.id = oldData.clause_id
        this.formField.save_type = 2
        this.drawer.show = true
    },
    //处理表单提交
    handleForm () {
      console.log(this.formField)
      if(this.formField.save_type == 1){
          createClause(this.formField).then(res => {
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
          updateClause(this.formField).then(res => {
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
      let id = params.row.clause_id
      deleteClause(id).then(res => {
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
        getVersionData({ page: curr, pageSize: this.page.pageSize}).then(res => {
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
    getClauseList({ page, pageSize }).then(res => {
      this.page.total = res.data.count
      this.tableData = res.data.data
      this.loading = false
    })
  }
}
</script>

<style>

</style>

