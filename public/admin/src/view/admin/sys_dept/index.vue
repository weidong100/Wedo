<template>
  <div>
    <Card>
      <div class="search-con search-con-top">
        <Button type="primary" icon="md-add" @click="addData()">新增</Button>
      </div>
      <Spin size="large" fix v-show="loading"></Spin>
      <tree-table expand-key="name" :expand-type="false" :selectable="false" :columns="columns" :data="data" >
        <template slot="options" slot-scope="scope">
          <Button @click="editData(scope.row)" type="success" size="small" style="marginRight:5px;">修改</Button>
          <Poptip
          confirm
          title="你确定要删除吗?"
          @on-ok="handleDelete(scope)"
          >
            <Button type="error" size="small">删除</Button>
          </Poptip>
        </template>
      </tree-table>
    </Card>
    <Drawer
        :title="drawer.title"
        v-model="drawer.show"
        width="50"
        show-message
        :mask-closable="false"
    >
      <Form ref="sform" :model="formField">
          <Row :gutter="32">
              <Col span="12">
                  <FormItem label="部门名称" label-position="top" prop="name" required>
                      <Input v-model="formField.name" placeholder="请输入部门名称" />
                  </FormItem>
              </Col>
              
              <Col span="12">
                  <FormItem label="父级部门" label-position="top" required prop="parent_id">
                      <Cascader :data="cascaderData" v-model="formField.parent_id" change-on-select></Cascader>
                  </FormItem>
              </Col>
          </Row>
          <Row :gutter="32">
              <Col span="12">
                  <FormItem label="排序" label-position="top" required prop="order_num">
                      <InputNumber :min="0" v-model="formField.order_num" style="width:100%;"></InputNumber>
                  </FormItem>
              </Col>
          </Row>
          <FormItem>
              <Button type="primary" @click="handleForm()" >保存</Button>
              <Button type="warning" style="marginLeft: 8px" @click="formReset(false)">重置</Button>
              <Button style="marginLeft: 8px" @click="drawer.show = false">取消</Button>
          </FormItem>
        </Form>
    </Drawer>
  </div>
</template>

<script>
import './index.less'
import { getSysDeptData, createSysDept, updateSysDept, deleteSysDept } from '@/api/sys_dept'

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
  name: 'wd_sys_dept_page',
  data () {
    return {
      loading: true,
      columns: [
        {
          title: '部门名称',
          key: 'name',
          minWidth: '100px'
        },
        {
          title: '创建时间',
          key: 'create_time'
        },
        {
          title: '更新时间',
          key: 'update_time'
        },
        {
          title: '排序',
          key: 'order_num'
        },
        {
          title: '操作',
          key: '',
          minWidth: '150px',
          type: 'template',
          template: 'options'
        }
      ],
      data: [],
      drawer: {
        title: '',
        show: false
      },
      formField: {
        id: '',
        name: '',
        order_num: 0,
        parent_id: [],
        save_type: ''
      }
    }
  },
  computed: {
    cascaderData: function () {
      return transData(this.data)
    }
  },
  methods: {
    addData () {
      this.drawer.title = '部门添加'
      this.drawer.show = true
      this.formReset()
      this.formField.save_type = 1
    },
    editData (oldData) {
      this.drawer.title = '部门修改'
      for (let key in this.formField){
        this.formField[key] = oldData[key]
      }
      this.formField.id = oldData.dept_id
      this.formField.save_type = 2
      this.drawer.show = true
      console.log(this.formField)
    },
    handleForm () {
      let length = this.formField.parent_id.length 
      this.formField.parent_id = length > 0 ? this.formField.parent_id[length - 1] : 0;
      if(this.formField.save_type == 1){
        createSysDept(this.formField).then(res => {
          if(res.data.code == 200){
            this.drawer.show = false
            this.$Message.success(res.data.msg)
            this.reloadTable()
          }else{
            this.$Message.error(res.data.msg)
          }
        })
      }else if(this.formField.save_type == 2){
        updateSysDept(this.formField).then(res => {
          if(res.data.code == 200){
            this.drawer.show = false
            this.$Message.success(res.data.msg)
            this.reloadTable()
          }else{
            this.$Message.error(res.data.msg)
          }
        })
      }
    },
    handleDelete (params) {
      let id = params.row.dept_id
      deleteSysDept(id).then(res => {
        if(res.data.code == 200){
          this.$Message.success(res.data.msg)
          this.reloadTable()
        }else{
          this.$Message.error(res.data.msg)
        }
      })
    },
    formReset (all = true) {
      this.$refs.sform.resetFields();
      if(all){
          this.formField.id = ''
      }
      console.log(this.formField)
    },
    reloadTable () {
      this.loading = true
      getSysDeptData().then(res => {
        this.data = res.data.data
        this.loading = false
      })
    }
  },
  mounted () {
    getSysDeptData().then(res => {
      console.log(res)
      this.data = res.data.data
      this.loading = false
    })
  }
}
</script>

<style>

</style>
