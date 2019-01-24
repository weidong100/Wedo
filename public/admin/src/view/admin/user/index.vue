<template>
    <div class="userInfo">
        <Card class="user_detail">
            <Tables ref="tables1" :value="historyData" :columns="columns7" :searchable='true' ></Tables>
            <Modal
        v-model="modal1"
        title="用户详情信息"
        @on-ok="ok"
        @on-cancel="cancel">
        <div class="user">
             <Form>
                <FormItem label="用户id">
                    <Input v-model="user_detail.user_id" placeholder="" style="width: 300px" />
                </FormItem>
                <FormItem label="用户名">
                    <Input v-model="user_detail.username" placeholder="" style="width: 300px" />
                </FormItem>
                <FormItem label="角色">
                    <Input v-model="user_detail.role_name" placeholder="" style="width: 300px" />
                </FormItem>
                <FormItem label="职位">
                    <Input v-model="user_detail.role_id" placeholder="" style="width: 300px" />
                </FormItem>
                <FormItem label="dept_id">
                    <Input v-model="user_detail.dept_id" placeholder="" style="width: 300px" />
                </FormItem>
                <FormItem label="del_flag">
                    <Input v-model="user_detail.del_flag" placeholder="" style="width: 300px" />
                </FormItem>
                 <FormItem label="create_time">
                    <Input v-model="user_detail.create_time" placeholder="" style="width: 300px" />
                </FormItem>
            </Form>
        </div>
    </Modal>
            <div class="page">
                <Page :total="total" show-elevator :page-size="pageSize" show-sizer  @on-change="changepage"></Page>
            </div>
        </Card>
    </div>
</template>

<script>
    import {  getUserList, updateUserInfo } from '@/api/data'
    import Tables from '@/components/tables'
    export default {
        data(){
            return{
                userList:[
                    ],
                user_detail:{},
                total:0,
                pageSize:10,
                modal1: false,
                columns7: [
                    {
                        title: 'ID',
                        key: 'user_id'
                    },
                    {
                        title: '用户名',
                        key: 'username'
                    },
                    
                    {
                        title: '角色',
                        key: 'role_name'
                    },
                    {
                        title:'部门',
                        key:'name',
                    },
                     {
                        title: '职位id',
                        key: 'role_id'
                    },
                     {
                        title: 'dept_id',
                        key: 'dept_id'
                    },
                     {
                        title: 'del_flag',
                        key: 'del_flag'
                    },
                    {
                        title: 'create_time',
                        key: 'create_time'
                    },
                    
                    {
                        title: '编辑',
                        key: 'action',
                        width: 150,
                        align: 'center',
                        render: (h, params) => {
                            return h('div', [
                                h('Button', {
                                    props: {
                                        type: 'success',
                                        size: 'small'
                                    },
                                    style: {
                                        marginRight: '5px',
                                      
                                    },
                                    on: {
                                        click: () => {
                                            this.modal1 = true;
                                            this.user_detail = this.userList[params.index]
                                            console.log(this.user_detail)
                                            this.show(params.index)
                                        }
                                    }
                                }, '编辑'),
                                h('Button', {
                                    props: {
                                        type: 'error',
                                        size: 'small',
                                        title:"删除",
                                        confirm: true,
                                        title: '你确定要删除吗?'
                                    },
                                    
                                    on: {
                                        click: () => {
                                            let self = this
                                            this.remove(params.index)
                                            user_id = this.userList[params.index].user_id
                                            delUser().then((response)=>{
                                                self.$router.go(0)
                                            }).catch(function(){
                                                console.log("error")
                                            })
                                            
                                            
                                        },
                                        'on-ok': () => {
                                                        vm.$emit('on-delete', params)
                                                        vm.$emit('input', params.tableData.filter((item, index) => index !== params.row.initRowIndex))
                                                        }
                                    }
                                }, '删除')
                            ]);
                        }
                    }
                ],
                historyData:[]
            
            }
        },
        components:{Tables},
        mounted(){
            this.init()
        },
        methods:{
            init(){
                console.log('user')
                getUserList().then((response)=>{
                    console.log(response.data)
                    this.userList = response.data.data
                    this.total = response.data.count
                    if(response.data.count < this.pageSize){
                        this.historyData = this.userList;
                    }else{
                        this.historyData = this.userList.slice(0,this.pageSize);
                    }
                }).catch(function(){
                    console.log('error')
                })
            },
            show (index) {
                // this.$Modal.info({
                //     title: 'User Info',
                //     content: `Name：${this.data6[index].name}<br>Age：${this.data6[index].age}<br>Address：${this.data6[index].address}`
                // })
               
            },
            remove (index) {
                this.userList.splice(index, 1);
            },
            ok () {
                console.log(this.user_detail)
                updateUserInfo(this.user_detail).then((response)=>{
                   console.log("1")
                }).catch(function(){
                    console.log('error')
                })
                this.$Message.info('更新成功');
                 let self = this
            },
            cancel () {
                this.$Message.info('Clicked cancel');
            },
            changepage(index){
                var _start = ( index - 1 ) * this.pageSize;
                var _end = index * this.pageSize;
                this.historyData = this.userList.slice(_start,_end);
            }
        }
    }
</script>

<style scoped>
    .user_detail{
        background-color: #fff;
        width: 100%;
        hyphens: 100%;
      
    }
    .page{
        width: 100%;
        height: 100%;
        padding: 10px 10px;
        padding-bottom: 0;
        text-align: center;
    }
</style>