<template>
    <div class="userInfo">
        <Card class="user_detail">
            <Tables 
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
                        <FormItem label="用户名" label-position="top" prop="username" required>
                            <Input v-model="formField.username" placeholder="请输入用户名" />
                        </FormItem>
                    </Col>
                    <Col span="12">
                        <FormItem label="手机号"  label-position="top"  prop="mobile" required>
                            <Input  v-model="formField.mobile" placeholder="请输入手机号" />
                        </FormItem>
                    </Col>
                </Row>
                <Row :gutter="32">
                    <Col span="12">
                        <FormItem label="用户类型" label-position="top" prop="user_types" required>
                        	   <Select v-model="formField.user_types" placeholder="请选择用户类型">
                                <Option  :value="21">普通学生</Option>
                                <Option  :value="22">负责人</Option>
                                <Option  :value="23">合伙人</Option>
                                <Option  :value="24">栋楼长</Option>
                                <Option  :value="25">骑手</Option>
                            </Select>
                        </FormItem>
                    </Col>
                    <Col span="12">
                        <FormItem label="学校" label-position="top" prop="school_id" required>
                        	   <Select v-model="formField.school_id" placeholder="请选择学校">
                                <Option v-for="item in schools" :value="item.id">{{ item.name }}</Option>
                            </Select>
                        </FormItem>
                    </Col>
                </Row>
                 <Row :gutter="32">
                    <Col span="12">
                        <FormItem label="宿舍楼" label-position="top" prop="study_hotel_name" required>
                        	   <Select v-model="formField.id" placeholder="请选择宿舍楼">
                                 <Option v-for="item in floors" :value="item.id">{{ item.name }}</Option>
                            </Select>
                        </FormItem>
                    </Col>
                    <Col span="12">
                        <FormItem label="寝室号" label-position="top" prop="study_hotel_room_num_id" required>
                        	   <Select v-model="formField.study_hotel_room_num_id" placeholder="请选择寝室号">
                                 <Option v-for="item in rooms" :value="item.id">{{ item.name }}</Option>
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
            	
            </Tables>
        </Card>
    </div>
</template>

<script>
    import Tables from '_c/tables'
	import { getMemberList,createMember,updateMember,deleteMember ,getSchoolData,getFloorData,getRoomData} from '@/api/data'
    export default {
  name: 'memuser_page',
  
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
        {title: 'ID',     key: 'userid'},
        {title: '用户名',  key:  'username'},
        {title: '性别',    key: 'sex'},
        {title: '用户类型', key: 'user_types'},
        {title: '手机号',  key: 'mobile'},
        {title: '学校', key: 'school_id'},
        {title: '账户余额', key: 'remainder_money'},
        {title: '抵扣金', key: 'extends2'},
        {title: '邀请码', key: 'usercode'},
        {title: '用户等级', key: 'extends4'},
        {title: '状态', key: 'status'},
        {title: '注册时间', key: 'create_time'},
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
        username: '',
        school_id: '',
        user_types:'',
        mobile:'',
        study_hotel_name:'',
        study_hotel_room_num:'',
        study_hotel_room_num_id:'',
        sex:'',
        status:'',
        id:  '',
        save_type: ''
      },
      floors: [],
      rooms: [],
      schools:[],
    }
  },
  methods: {
    //监听分页
    handlePage (page, size) {
      this.loading = true
      getMemberList({ page, pageSize: size }).then(res => {
        this.page.total = res.data.count
        this.tableData = res.data.data
        this.loading = false
      })  
    },
    handleMySearch (){
      let field = this.searchField
      console.log(field)
      getMemberList(field).then(res => {
          console.log(res)
          this.tableData = res.data.data
          this.page.page  = 1
          this.page.total = res.data.count
      })
    },
    //监听添加
    addData () {
    	this.formField.save_type = 1
        this.opentype = 'drawer'
        this.drawer.title = '用户添加'
        this.drawer.show = true
        this.formReset()
        
    },
    //监听编辑
    editData (oldData, vm) {
        this.opentype = 'drawer'
        this.drawer.title = '用户编辑'
        for (let key in this.formField){
          this.formField[key] = oldData[key]
        }
        this.formField.id = oldData.userid
        this.formField.save_type = 2
        this.drawer.show = true
        //
    },
    //处理表单提交
    handleForm () {
      console.log(this.formField)
      if(this.formField.save_type == 1){
          createMember(this.formField).then(res => {
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
          updateMember(this.formField).then(res => {
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
      let id = params.row.userid
      deleteMember(id).then(res => {
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
        getMemberList({ page: curr, pageSize: this.page.pageSize}).then(res => {
          this.page.total = res.data.count
          this.tableData = res.data.data
          this.page.page = curr
          this.loading = false
        })
    },
    getSchoolList () {
    	getSchoolData().then(res => {
    		 this.schools = res.data.data
    	})
    },
     getFloorList () {
      getFloorData().then(res => {
        this.floors = res.data.data
      })
    },
     getRoomList () {
    	getRoomData().then(res => {
    		 this.rooms = res.data.data
    	})
    }
  },
  //挂载后方法
  mounted () {
    let {
      page,
      pageSize
    } = this.page
    this.getSchoolList()
    this.getFloorList()
    this.getRoomList()
    getMemberList({ page, pageSize }).then(res => {
      console.log(res)
      this.page.total = res.data.count
      this.tableData = res.data.data
      this.loading = false
    })
  }
}
</script>

<style>

</style>
