<template>
  <Row>
    <i-col span="12">
      <Card class="my-card">
        <p slot="title">
            <Icon type="md-color-palette"></Icon>
            生成Vue前台代码
        </p>
        <Spin size="large" fix v-show="spinShow"></Spin>
        <Form  :label-width="80" ref="sform" v-show="formShow" inline>
          <Row :gutter="32">
            <Col span="12">
              <FormItem label="数据表" required class="my-form-item">
                <Select placeholder="请选择数据表" v-model="table" @on-change="handleTableSelect">
                  <Option v-for="item in tableList" :value="item.fullname">{{ item.fullname }}</Option>
                </Select>
              </FormItem>
            </Col>
            <Col span="12">
              <FormItem label="生成路径" required class="my-form-item">
                <Dropdown placement="bottom-start" @on-click="handleDropdownClick" style="width:100%;">
                    <a href="javascript:void(0)">
                      <Input v-model="path" placeholder="请输入生成路径" /> 
                    </a>
                    <DropdownMenu slot="list">
                        <DropdownItem  v-for="item in moduleList" :name="item">{{ item }}</DropdownItem>
                    </DropdownMenu>
                </Dropdown>
              </FormItem>
            </Col>
          </Row>
          <Row :gutter="32">
            <Col span="12">
              <FormItem label="文件名称" required class="my-form-item">
                <Input v-model="filename" placeholder="请输入文件名称" /> 
              </FormItem>
            </Col>
            <Col span="12">
              <FormItem label="组件名称" required class="my-form-item">
                <Input v-model="componentname" placeholder="请输入组件名称" /> 
              </FormItem>
            </Col>
          </Row>
          <Row :gutter="32">
            <Col span="12">
              <FormItem label="列表接口" required class="my-form-item">
                <Input v-model="api.listApi" placeholder="请输入列表接口" /> 
              </FormItem>
            </Col>
            <Col span="12">
              <FormItem label="添加接口" required class="my-form-item">
                <Input v-model="api.createApi" placeholder="请输入添加接口" /> 
              </FormItem>
            </Col>
          </Row>
          <Row :gutter="32">
            <Col span="12">
              <FormItem label="编辑接口" required class="my-form-item">
                <Input v-model="api.editApi" placeholder="请输入编辑接口" /> 
              </FormItem>
            </Col>
            <Col span="12">
              <FormItem label="删除接口" required class="my-form-item">
                <Input v-model="api.deleteApi" placeholder="请输入删除接口" /> 
              </FormItem>
            </Col>
          </Row>
          <Row :gutter="32">
            <Col span="12">
              <FormItem label="编辑及删除主键" required class="my-form-item">
                <Input v-model="pk" placeholder="请输入主键依据" /> 
              </FormItem>
            </Col>
          </Row>
        </Form>
      </Card>
    </i-col>
    <i-col span="12">
      <Card class="my-card">
        <p slot="title">
            <Icon type="md-reorder"></Icon>
            菜单配置
        </p>
        <Spin size="large" fix v-show="spinShow"></Spin>
        <Form  :label-width="80" ref="mform" v-show="formShow" inline>
          <Row :gutter="32">
              <Col span="12">
                  <FormItem label="菜单名称" label-position="top" required class="my-form-item">
                      <Input v-model="menu.title" placeholder="请输入菜单名称" />
                  </FormItem>
              </Col>
              <Col span="12">
                  <FormItem label="父菜单" label-position="top" class="my-form-item" required>
                      <Select v-model="menu.parent_id" placeholder="请选择父级">
                        <Option :value="0" label="顶级菜单"><span style="fontWeight:600;">顶级菜单</span></Option>
                        <template v-for="item in menuData">
                          <Option :value="item.menu_id" :label="item.title" v-if="item.type == 0"><span style="fontWeight:600;">{{ item.title }}</span></Option>
                          <template v-for="sec in item.children">
                            <Option  :value="sec.menu_id" :label="sec.title" v-if="sec.type == 0"><span style="paddingLeft:10px;">{{ sec.title }}</span></Option>
                              <Option v-for="thr in sec.children" v-if="thr.type == 0"  :value="thr.menu_id" :label="thr.title"><span style="paddingLeft:20px;">{{ thr.title }}</span></Option>
                          </template>
                        </template>
                      </Select>
                  </FormItem>
              </Col>
          </Row>
          <Row :gutter="32">
              <Col span="12">
                  <FormItem label="路由名称" label-position="top" class="my-form-item" required>
                      <Input v-model="menu.name" placeholder="请输入路由名称" />
                  </FormItem>
              </Col>
              <Col span="12">
                  <FormItem label="路由" label-position="top" class="my-form-item" required>
                      <Input v-model="menu.path" placeholder="请输入路由" />
                  </FormItem>
              </Col>
          </Row>
          <Row :gutter="32">
            <Col span="12">
                  <FormItem label="组件地址" label-position="top" class="my-form-item" >
                      <Input v-model="menu.component" placeholder="请输入路由(顶级菜单请置空)" />
                  </FormItem>
            </Col>
            <Col span="12">
                  <FormItem label="LOGO" label-position="top" class="my-form-item" required>
                      <Input v-model="menu.icon" placeholder="请输入LOGO" >
                        <Icon :type="menu.icon" slot="prefix" />
                      </Input>
                  </FormItem>
            </Col>
          </Row>
          <Row :gutter="32">
            <Col span="12">
                  <FormItem label="排序" label-position="top" class="my-form-item">
                      <InputNumber :min="0" v-model="menu.sort" style="width:100%;"></InputNumber>
                  </FormItem>
            </Col>
          </Row>
          
        </Form>
      </Card>
    </i-col>
    <i-col span="24">
      <Card class="my-card">
        <p slot="title">
            操作
        </p>
        <Button type="primary" slot="extra" @click="createMC">生成</Button>
        <Table :columns="columns" :data="data"></Table>
      </Card>
    </i-col>
  </Row>
  
</template>

<script>
import { getTableList, codeCreateMC, getTableField, codeCreateVue, codeVerifyPath, getMenuData } from '@/api/data'
export default {
  name: 'vcode_pages',
  data () {
    return {
      columns: [
        {
          title: '字段',
          key: 'field'
        },
        {
          title: '注释',
          key: 'com',
          render: (h, params) => {
            return (
              <Input placeholder={params.row.com} v-model={this.fieldsAlias[params.row.field]}/>
            )
          }
        },
        {
          title: '类型',
          key: 'field',
          render: (h, params) => {
            return (
              <Cascader data={this.typeSelect} v-model={this.fieldsType[params.row.field]}></Cascader>
            )
          }
        },
        {
          title: '列表',
          key: 'field',
          render: (h, params) => {
            return (
              <Checkbox v-model={this.listfields[params.row.field]}></Checkbox>
            )
          }
        },
        {
          title: '搜索',
          key: 'field',
          render: (h, params) => {
            return (
              <Checkbox v-model={this.searchfields[params.row.field]}></Checkbox>
            )
          }
        },
        {
          title: '添加编辑',
          key: 'field',
          render: (h, params) => {
            return (
              <Checkbox v-model={this.editfields[params.row.field]}></Checkbox>
            )
          }
        }
      ],
      data: [],
      table: '',
      path: '',
      filename: 'index',
      componentname: '',
      listfields: {},
      searchfields: {},
      editfields: {},
      fieldsAlias: {},
      fieldsType: {},
      typeSelect: [
        {
          value: 'input',
          label: '输入框'
        },
        {
          value: 'select',
          label: '选择器'
        },
        {
          value: 'radio',
          label: '单选框'
        },
        {
          value: 'checkbox',
          label: '复选框'
        },
        {
          value: 'datepicker',
          label: '日期选择器',
          children: [
            {
              value: 'data',
              label: '日期'
            },
            {
              value: 'daterange',
              label: '日期范围'
            },
            {
              value: 'datetime',
              label: '日期时间'
            },
            {
              value: 'datetimerange',
              label: '日期时间范围'
            },
            {
              value: 'year',
              label: '年份'
            },
            {
              value: 'month',
              label: '月份'
            }
          ]
        },
        {
          value: 'timepicker',
          label: '时间选择器',
          children: [
            {
              value: 'time',
              label: '时间'
            },
            {
              value: 'timerange',
              label: '时间范围'
            }
          ]
        },
        {
          value: 'upload',
          label: '上传',
          children: [
            {
              value: 'single',
              label: '单文件'
            },
            {
              value: 'multiple',
              label: '多文件'
            }
          ]
        }
      ],
      tableList: [],
      moduleList: [],
      prefix: '',
      spinShow: true,
      formShow: false,
      api: {
        listApi : 'listApi',
        editApi : 'editApi',
        createApi : 'createApi',
        deleteApi : 'deleteApi'
      },
      pk: 'id',
      menu: {
        title: '',
        name: '',
        path: '',
        component: '',
        icon: '',
        sort: 0,
        parent_id: 0
      },
      menuData: []
    }
  },
  watch: {
    path: function(newPath){
      this.menu.component = 'view/' + newPath + '/' + this.filename
    },
    filename: function(newName){
      this.menu.component = 'view/' + this.path + '/' + newName
    }
  },
  methods: {
    handleDropdownClick (name) {
      this.path = name
    },
    handleTableSelect (value) {
      let table = value.replace(this.prefix, '')
      this.menu.name = table
      this.menu.path = table
      getTableField(value).then(res => {
        this.data = res.data.data
        this.listfields = {}
        this.searchfields = {}
        this.editfields = {}
        this.fieldsAlias = {}
        this.fieldsType = {}
        this.componentname = value + '_pages'
        this.api.listApi = this.transformStr('get_' + table + 'Data')
        this.api.createApi = this.transformStr('create_' + table)
        this.api.editApi = this.transformStr('update_' + table)
        this.api.deleteApi = this.transformStr('delete_' + table)

        res.data.data.forEach(item => {
          this.listfields[item.field] = false
          this.searchfields[item.field] = false
          this.editfields[item.field] = false
          this.fieldsAlias[item.field] = item.com
          this.fieldsType[item.field] = []
          if(item.key == 'PRI'){
            this.pk = item.field
          }
        })
      })
    },
    transformStr (str) {
        var newStr = '';
        var arr = str.split('_');//split是分隔字符串
        for(var i = 0; i<arr.length; i++){
            var s = arr[i];
            if(i == 0){
                newStr += s;
            }else{
                newStr += s.substr(0, 1).toLocaleUpperCase();
                newStr += s.substr(1, s.length-1);
            }
        }
        return newStr;
    },
    createMC () {
      if(this.table == ''){
        this.$Message.error('请选择一项数据表');
        return
      }
      if(this.path == ''){
        this.$Message.error('请选择保存路径');
        return
      }
      if(this.filename == ''){
        this.$Message.error('请填写文件名称');
        return
      }
      if(this.menu.title == ''){
        this.$Message.error('请填写菜单名称');
        return
      }
      if(this.menu.name == ''){
        this.$Message.error('请填写路由名称');
        return
      }
      if(this.menu.path == ''){
        this.$Message.error('请填写路由地址');
        return
      }
      if(this.menu.icon == ''){
        this.$Message.error('请填写菜单LOGO');
        return
      }
  
      let listfields = this.objPropFilter(this.listfields);
      let searchfields = this.objPropFilter(this.searchfields);
      let editfields = this.objPropFilter(this.editfields);
      
      codeVerifyPath({
        table: this.table,
        path: this.path,
        file: this.filename,
        component: this.componentname,
        list: listfields,
        search: searchfields,
        edit: editfields,
        alias: this.fieldsAlias,
        types: this.fieldsType,
        api: this.api,
        pk: this.pk,
        menu: this.menu
      }).then(res => {
        console.log(res)
        if(res.data.code == 500){
          this.$Modal.confirm({
              title: '警告',
              content: res.data.msg,
              okText: '覆盖',
              cancelText: '取消',
              onOk: () => {
                  codeCreateVue().then(res => {
                    this.$Notice.info({
                      title: '通知',
                      duration: 15,
                      render: h => {
                          return h('span', {
                            domProps: {
                              innerHTML: res.data.msg
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
                return h('span', {
                  domProps: {
                    innerHTML: res.data.msg
                  }
                })
            }
          });
        }
      })
    },
    objPropFilter (obj) {
      let arr = [];
      for(let k in obj){
        if(obj[k]){
          arr.push(k)
        }
      }
      return arr
    }
  },
  mounted () {
    getTableList({ path: 'view' }).then(res => {
      if(res.data.code == 200){
        this.spinShow = false
        this.formShow = true
        this.tableList = res.data.data.tables
        this.moduleList = res.data.data.modules
        this.prefix = res.data.data.prefix
      }
    })
    getMenuData().then(res => {
      this.menuData = res.data.data
    })
  }
}
</script>

<style scoped>
.my-card{
  margin: 0 5px 5px;
}
.my-form-item{
  width:100%;
  margin-top: 10px;
}
.my-row{
  margin-bottom: 10px;
}
</style>
