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
                    <Input v-model="searchField.name" class="search-input" placeholder="请输入名称"/>
                    <Button class="search-btn" type="primary" icon="md-search" @click="handleMySearch">搜索</Button>
                </template>
                <!--表头导出-->
                <Button style="marginLeft: 2px;" type="success" icon="md-archive" slot="afterSearch" @click="exportExcel">导出</Button>
                <!--添加编辑表单-->
                <Form ref="sform" :model="formField" slot="drawer">
                    <Row :gutter="32">
                        <Col span="12">
                            <FormItem label="名称" label-position="top" prop="name" required>
                                <Input v-model="formField.name" placeholder="请输入名称"/>
                            </FormItem>
                        </Col>
                        <Col span="12">
                            <FormItem label="排序" label-position="top" prop="order_num" required>
                                <Input v-model="formField.order_num" placeholder="请输入排序"/>
                            </FormItem>
                        </Col>
                        <Col span="12">
                            <FormItem label="父级" label-position="top" prop="parent_id" required>
                                <Select v-model="formField.parent_id" placeholder="请选择父级">
                                    <Option value="">请选择父级</Option>
                                </Select>
                            </FormItem>
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
import { getSysDeptData,updateSysDept,createSysDept,deleteSysDept } from '@/api/sys_dept'

export default {
  name: 'wd_sys_dept_pages',
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
      searchField: {
        name: ''
      },
      columns: [
        { title: '名称', key: 'name' },
        { title: '排序', key: 'order_num' },
        { title: '修改时间', key: 'update_time' },
        { title: '父级', key: 'parent_id' },
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
        dept_id: '',
        name: '',
        order_num: '',
        parent_id: ''
      }
    }
  },
  methods: {
    //监听分页
    handlePage (page, size) {
      console.log('分页的方法在这里写')
      this.loading = true
      getSysDeptData({ page, pageSize: size }).then(res => {
        this.page.total = res.data.count
        this.tableData = res.data.data
        this.loading = false
      })  
    },
    //查询方法
    handleMySearch () {
      console.log('查询的方法在这里写')
      let field = this.searchField
      getSysDeptData(field).then(res => {
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
      this.formField.id = oldData.dept_id
      this.formField.save_type = 2
      this.drawer.show = true
      console.log('编辑的方法在这里写')
    },
    //处理表单提交
    handleForm () {
      if(this.formField.save_type == 1){
        createSysDept(this.formField).then(res => {
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
        updateSysDept(this.formField).then(res => {
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
      let id = params.row.dept_id      
      deleteSysDept(id).then(res => {
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
        this.formField.dept_id = ''
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
      getSysDeptData({ page: curr, pageSize: this.page.pageSize }).then(res => {
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
    getSysDeptData({ page, pageSize }).then(res => {
      this.page.total = res.data.count
      this.tableData = res.data.data
      this.loading = false
    })
  }
}
</script>
<style>

</style>