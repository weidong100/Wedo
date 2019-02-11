<template>
    <div>
        <Card>
            <tables 
            ref="tables"            
            :addButton="{ show: showButtonPermission('sys_user_button_add'), icon: 'md-add', type: 'primary', title: '添加', confirm: false  }"
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
                    <Input v-model="searchField.username" class="search-input my-search" placeholder="请输入账户"/>
                    <Button class="search-btn" type="primary" icon="md-search" @click="handleMySearch">搜索</Button>
                </template>
                <template slot="afterSearch">
                    <!--表头导出-->
                    <Button class="my-after-search-button" v-show="showButtonPermission('sys_user_button_export')" type="success" icon="md-archive" @click="exportExcel">导出</Button>
                </template>
                <!--添加编辑表单-->
                <Form ref="sform" :model="formField" slot="drawer" label-position="top">
                    <Row :gutter="32">
                        <Col span="12">
                            <FormItem label="账户" prop="username" required>
                                <Input v-model="formField.username" placeholder="请输入账户"/>
                            </FormItem>
                        </Col>
                        <Col span="12">
                            <FormItem label="手机" prop="phone" required>
                                <Input v-model="formField.phone" placeholder="请输入手机"/>
                            </FormItem>
                        </Col>
                        <Col span="12">
                            <FormItem label="部门ID" prop="dept_id" required>
                                <Cascader :data="cascaderData" v-model="formField.dept_id" change-on-select @on-change="choseRoles"></Cascader>
                            </FormItem>
                        </Col>
                        <Col span="12">
                            <FormItem label="角色" prop="role_id" required>
                                <Dropdown class="my-dropdown" @on-click="hadleRolesChosen">
                                    <a href="javascript:void(0)">
                                        <CellGroup class="my-cell-group">
                                          <Cell class="my-cell">
                                            <Tag v-for="item in init_roles" color="success" :key="`my_role_tag_` + item.role_id" closable @on-close="handleRoleTagClose(item.role_id)">{{ item.role_name }}</Tag>
                                          </Cell>
                                        </CellGroup>
                                    </a>
                                    <DropdownMenu slot="list">
                                        <DropdownItem v-for="item in mySelectData.roles" :key="`my_role_select_`+item.role_id" :name="item.role_name">{{ item.role_name }}</DropdownItem>
                                    </DropdownMenu>
                                </Dropdown>
                            </FormItem>
                        </Col>
                    </Row>
                    <Row :gutter="32">
                        <Col span="12">
                            <SingleUpload title="头像" field="avator"  :up="uploadInit.avator" :params="uploadParam.avator" :format="uploadFormat.avator" :maxSize="uploadMaxSize.avator" @upload-success="uploadSuccess.avator" @on-remove="uploadRemove.avator"></SingleUpload>
                        </Col>
                    </Row>
                    <Row class="my-form-buttons">
                        <FormItem>
                            <Button type="primary" @click="handleForm()">保存</Button>
                            <Button type="warning" style="marginLeft: 8px" @click="formReset(false)">重置</Button>
                            <Button style="marginLeft: 8px" @click="drawer.show = false">取消</Button>
                        </FormItem>
                    </Row>
                </Form>
            </tables> 
        </Card>
    </div>
</template>

<script>
import Tables from '_c/tables'
import SingleUpload from '_c/uploads/single-upload.vue'

import { getSysUserData,updateSysUser,createSysUser,deleteSysUser,getDeptIdSelectData,getRoleData } from '@/api/sys_user'
import { hasButtonPermission } from '@/libs/util'
import { findArray } from '@/libs/tools'

const transData = (nodes) => {
  let arr = []
  nodes.forEach(item => {
    let obj = {
      value: item.dept_id,
      label: item.name,
      children: (item.children && item.children.length > 0) ? transData(item.children) : []
    }
    arr.push(obj)
  })
  return arr
}
export default {
  name: 'wd_sys_user_pages',
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
        username: ''
      },
      columns: [
        { title: '账户', key: 'username' },
        { title: '部门', key: 'dname' },
        { title: '角色', key: 'roleName' },
        { title: '手机', key: 'phone' },
        { title: '创建时间', key: 'create_time' },
        { title: '修改时间', key: 'update_time' },
        {
          title: '操作',
          key: 'handle',
          button: [
            (h, params, vm) => {
              if(!this.showButtonPermission('sys_user_button_edit')) return h('')
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
              if(!this.showButtonPermission('sys_user_button_delete')) return h('')
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
            }          ]
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
        user_id: '',
        username: '',
        password: '',
        phone: '',
        avator: '',
        dept_id: []
      },
      init_roles: [],
      mySelectData: {
        dept_id: [],
        roles: []
      },
      uploadInit: {
        avator: {}
      },
      uploadParam: {
        avator: {
          path: ''
        }        
      },
      uploadFormat: {
        avator: ['jpg', 'jpeg', 'png']        
      },
      uploadMaxSize: {
        avator: 2048        
      },
      uploadRemove: {
        avator: (vm) => {
          vm.initImg = {}
          this.formField[vm.field] = ''
        }        
      },
      uploadSuccess: {
        avator: (name) => {
          this.formField.avator = name
          console.log(name)
        }        
      }
    }
  },
  computed: {
    cascaderData: function () {
      return transData(this.mySelectData.dept_id)
    }
  },
  methods: {
    handleRoleTagClose(id){
      this.init_roles = this.init_roles.filter((item, index) => item.role_id != id)
    },
    choseRoles(value, item){
      let dept_id = value[value.length-1]
      getRoleData(dept_id).then(res => {
        this.mySelectData.roles = res.data.data
      })
    },
    hadleRolesChosen(name){
      let itemChosen = findArray(name, this.mySelectData.roles, 'role_name')
      this.init_roles.push(itemChosen)
    },
    //监听分页
    handlePage (page, size) {
      console.log('分页的方法在这里写')
      this.loading = true
      getSysUserData({ page, pageSize: size }).then(res => {
        this.page.total = res.data.count
        this.tableData = res.data.data
        this.loading = false
      })  
    },
    //查询方法
    handleMySearch () {
      console.log('查询的方法在这里写')
      let field = this.searchField
      getSysUserData(field).then(res => {
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
      this.init_roles = []
      this.mySelectData.roles = []
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
      this.init_roles = oldData.roles
      this.formField.id = oldData.user_id
      this.formField.save_type = 2
      this.drawer.show = true
      console.log('编辑的方法在这里写')
    },
    //处理表单提交
    handleForm () {
      let dlength = this.formField.dept_id.length
      this.formField.dept_id = dlength > 0 ? this.formField.dept_id[dlength - 1] : '';
      let roles = []
      this.init_roles.forEach(item => {
        roles.push(item.role_id)
      })
      formField.roles = roles.join()
      if(this.formField.save_type == 1){
        createSysUser(this.formField).then(res => {
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
        updateSysUser(this.formField).then(res => {
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
      let id = params.row.user_id      
      deleteSysUser(id).then(res => {
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
      this.$refs.sform.resetFields()
      this.init_roles = []
      if(all){
        this.formField.user_id = ''
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
      getSysUserData({ page: curr, pageSize: this.page.pageSize }).then(res => {
        this.page.total = res.data.count
        this.tableData = res.data.data
        this.page.page = curr
        this.loading = false
      })
    },
    initSelectData () {
      getDeptIdSelectData().then(res => {
        this.mySelectData.dept_id = res.data.data
      })
    },
    showButtonPermission (permission) {
      return hasButtonPermission(permission, this.$store.state.user.buttonAccess, this.$store.state.user.access)      
    }
  },
  //挂载后方法
  mounted () {
    let {
      page,
      pageSize
    } = this.page
    getSysUserData({ page, pageSize }).then(res => {
      this.page.total = res.data.count
      this.tableData = res.data.data
      this.loading = false
    })
    this.initSelectData()
  }
}
</script>
<style scoped>
.my-form-buttons{
  margin-top: 20px;
}
.my-form-item{
  margin-bottom: 0;
}
.my-search{
  margin-right: 2px;
}
.my-before-search-button{
  margin-right: 2px;
}
.my-after-search-button{
  margin-left: 2px;
}
.ivu-select-dropdown{
  z-index: 1100;
}
.my-dropdown, .my-cell-group{
  width: 100%;
}
.my-cell{
  border: 1px solid #dcdee2;
  border-radius: 4px;
  height: 32px;
  padding: 2px 10px;
}
</style>