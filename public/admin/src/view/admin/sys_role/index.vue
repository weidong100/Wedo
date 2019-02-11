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
        @on-auth="setRoleAuth"
        @my-modal-close="handleModalClose"
        @on-my-modal-ok="handleMyModalOk"
      >
        <template slot="mySearch">
          <Input placeholder="输入角色名称" class="search-input" v-model="searchField.role_name"/>
          <Input placeholder="输入角色标识" class="search-input" v-model="searchField.role_code"/>
          <Button class="search-btn" type="primary" icon="md-search" @click="handleMySearch">搜索</Button>
        </template>
        <Button style="marginLeft: 2px;" type="success" icon="md-archive" slot="afterSearch" @click="exportExcel">导出</Button>
        <Form ref="sform" :model="formField" slot="drawer">
                <Row :gutter="32">
                    <Col span="12">
                        <FormItem label="角色名称" label-position="top" prop="role_name" required>
                            <Input v-model="formField.role_name" placeholder="请输入角色名称" />
                        </FormItem>
                    </Col>
                    <Col span="12">
                        <FormItem label="角色标识" label-position="top" prop="role_code" required>
                            <Input v-model="formField.role_code" placeholder="请输入角色标识" />
                        </FormItem>
                    </Col>
                    
                </Row>
                <Row :gutter="32">
                    <Col span="12">
                        <FormItem label="角色描述" label-position="top" prop="role_desc">
                            <Input v-model="formField.role_desc" placeholder="请输入角色描述" />
                        </FormItem>
                    </Col>
                    <Col span="12">
                        <FormItem label="所属部门" label-position="top" required prop="dept_id">
                            <Select v-model="formField.dept_id" placeholder="请选择部门">
                                <Option v-for="item in depts" :value="item.dept_id">{{ item.name }}</Option>
                            </Select>
                        </FormItem>
                    </Col>
                    
                </Row>
                
                <FormItem>
                    <Button type="primary" @click="handleForm()" >保存</Button>
                    <Button type="warning" style="marginLeft: 8px" @click="formReset(false)">重置</Button>
                    <Button style="marginLeft: 8px" @click="drawer.show = false">取消</Button>
                </FormItem>
        </Form>
        <AuthTree :data="authData" slot="myModal" @tree-data-update="handleAuthTreeUpdate" />
      </tables>
    </Card>
  </div>
</template>

<script>
import Tables from '_c/tables'
import AuthTree from './authtree/index.vue'
import { getRoleData, createRole, updateRole, deleteRole, getDeptData, getMenuData, roleAuth } from '@/api/sys_role'
import './authtree/index.less'
import '@/view/assets/search.less'
const findChecked = arr =>{
  var checkedA = []
  for(let i = 0 ; i < arr.length ; i++){
    if(arr[i].isCheck){
      checkedA.push(arr[i].menu_id)
    }
    if(arr[i].children && arr[i].children.length){
      checkedA = checkedA.concat(findChecked(arr[i].children))
    }
  }
  return checkedA
}
export default {
  name: 'role_page',
  
  components: {
    Tables,
    AuthTree
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
          role_name: ''
      },
      columns:[
        {title: '角色名称', key: 'role_name'},
        {title: '角色标识', key: 'role_code'},
        {title: '角色描述', key: 'role_desc'},
        {title: '所属部门', key: 'name'},
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
            (h, params, vm) => {
                return h('Button',{
                    props: {
                        type: 'dashed',
                        size: 'small',
                        icon: 'md-unlock'
                    },
                    on: {
                        'click': () => {
                            vm.$emit('on-auth', params.row.role_id)
                        }
                    }
                },'权限')
            }
          ]
        }
      ],
      tableData: [],
      authData: {},
      drawer:{
        title: '',
        show: false
      },
      myModal: {
        title: '',
        show: false,
        width: '800px'
      },
      formField: {
        role_name: '',
        role_code: '',
        role_desc: '',
        dept_id: '',
        id: '',
        save_type: ''
      },
      depts: [],
      newAuthData: [],
      currentRoleId: 0
    }
  },
  methods: {
    //监听分页
    handlePage (page, size) {
      console.log('同时触发这里')
      this.loading = true
      getRoleData({ page, pageSize: size }).then(res => {
        this.page.total = res.data.count
        this.tableData = res.data.data
        this.loading = false
      })  
    },
    handleMySearch (){
      let field = this.searchField
      console.log(field)
      getRoleData(field).then(res => {
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
        //
        this.drawer.title = '角色添加'
        this.drawer.show = true
        this.formReset()
        this.formField.save_type = 1
    },
    //监听编辑
    editData (oldData, vm) {
      this.opentype = 'drawer'
        this.drawer.title = '角色编辑'
        for (let key in this.formField){
          this.formField[key] = oldData[key]
        }
        this.formField.id = oldData.role_id
        this.formField.save_type = 2
        this.drawer.show = true
        console.log('编辑的方法在这里写')
        //
    },
    //处理表单提交
    handleForm () {
      console.log(this.formField)
      if(this.formField.save_type == 1){
          createRole(this.formField).then(res => {
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
          updateRole(this.formField).then(res => {
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
      let id = params.row.role_id
      deleteRole(id).then(res => {
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
    handleModalClose(){
    },
    setRoleAuth (id) {
      // console.log(id)
      // return
      this.myModal.title = "权限分配"
      this.currentRoleId = id
      getMenuData({ role_id: id }).then(res => {
        this.newAuthData = res.data.data
        let root = {
          menu_id: 0,
          parent_id: -1,
          title: '总后台',
          isCheck: false,
          children: res.data.data,
          expand: true
        }
        if(res.data.extra.authRoot){
          root.isCheck = true
        }
        this.authData = root
        this.myModal.show = true
      })
    },
    handleAuthTreeUpdate(data){
      this.newAuthData = data.children
    },
    handleMyModalOk(){
      let field = findChecked(this.newAuthData)
      roleAuth({role_id:this.currentRoleId,menus:field.join()}).then(res => {
        this.$Message.info(res.data.msg)
      })
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
        getRoleData({ page: curr, pageSize: this.page.pageSize}).then(res => {
          this.page.total = res.data.count
          this.tableData = res.data.data
          this.page.page = curr
          this.loading = false
        })
    },
    getDeptList () {
      getDeptData().then(res => {
        this.depts = res.data.data
      })
    }
  },
  //挂载后方法
  mounted () {
    let {
      page,
      pageSize
    } = this.page
    this.getDeptList()
    getRoleData({ page, pageSize }).then(res => {
      this.page.total = res.data.count
      this.tableData = res.data.data
      this.loading = false
    })
  }
}
</script>


