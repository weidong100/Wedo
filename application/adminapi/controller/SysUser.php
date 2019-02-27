<?php
namespace app\adminapi\controller;
use app\adminapi\model\UserModel;
use think\Db;

class SysUser extends Common
{
    
    /**
     * @api {get} user  用户列表
     * @apiDescription 用户部门角色列表
     * @apiName index
     * @apiGroup User
     * @apiParam {string} username 用户名
     * @apiParam {Integer} role_id 角色ID
     * @apiParam {Integer} dept_id 部门ID
     * @apiParam {Integer} page 页码
     * @apiParam {Integer} pageSize 分页大小
     * @apiSuccess  code 返回200
     * @apiSampleRequest http://basedemo.weidong100.com/user
     * @apiVersion 1.0.0
     */
    public function index(){
       	$UserModel = new UserModel();
       	$where = [];
       	if(input('username')){
            $where['username'] = ['like','%'.input('username').'%'];
        }
        if(input('role_id')){
            $where['ur.role_id'] = input('role_id');
        }
        if(input('dept_id')){
            $where['u.dept_id'] = input('dept_id');
        }
        $page = input('get.page',1);
        $pageSize = input('get.pageSize',10);
        return $UserModel->selectUsers($where,$page,$pageSize);
    }
    
    /**
     * @api {post} user/create 添加用户
     * @apiDescription 添加用户
     * @apiName create
     * @apiGroup User
     * @apiParam {string} username 用户名
     * @apiParam {string} password 登录密码
     * @apiParam {string} salt 随机数
     * @apiParam {string} phone 联系方式
     * @apiParam {string} avatar 头像
     * @apiParam {Integer} role_id 角色ID
     * @apiParam {Integer} dept_id 部门ID
     * @apiParam {string} wx_openid 微信openid
     * @apiParam {string} qq_openid QQopenid
     * @apiSuccess  code 返回200
     * @apiSampleRequest http://basedemo.weidong100.com/user/create
     * @apiVersion 1.0.0
     */
    public function create(){
         $UserModel = new UserModel();
         $data['username'] = input('username');
         $data['password'] = input('password');
         $data['phone'] = input('phone');
         $data['avatar'] = input('avatar');
         $data['dept_id'] = input('dept_id',0);
         $data['wx_openid'] = input('wx_openid');
         $data['qq_openid'] = input('qq_openid');
         $roles= input('roles');
        return $UserModel->insertUser($data,$roles);
    }
    
    
    /**
     * @api {get} user/read 用户信息
     * @apiDescription 查询单个用户信息
     * @apiName read
     * @apiGroup User
     * @apiParam {Integer} user_id 用户ID
     * @apiSuccess  code 返回200
     * @apiSampleRequest http://basedemo.weidong100.com/user
     * @apiVersion 1.0.0
     */
    public function read(){
        $UserModel = new UserModel;
        $user_id = input("id",session('admin_id'));
        return $UserModel->findUser($user_id);
    }
    
    /**
     * @api {PUT} user/update 更新用户信息
     * @apiDescription 更新用户信息
     * @apiName update
     * @apiGroup User
     * @apiParam {Integer} user_id 用户ID
     * @apiParam {string} username 用户名
     * @apiParam {string} password 登录密码
     * @apiParam {string} phone 联系方式
     * @apiParam {string} avatar 头像
     * @apiParam {Integer} role_id 角色ID
     * @apiParam {Integer} dept_id 部门ID
     * @apiParam {string} wx_openid 微信openid
     * @apiParam {string} qq_openid QQopenid
     * @apiSuccess  code 返回200
     * @apiSampleRequest http://basedemo.weidong100.com/user
     * @apiVersion 1.0.0
     */
    public function update(){
       
        $UserModel = new UserModel;
        $data['user_id'] = input("id");
        $data['username'] = input('username');
        $data['dept_id'] = input('dept_id');
        $data['del_flag'] = input('del_flag');
        $role_id = input('role_id');
        return $UserModel->updateUser($data,$role_id);
    }
    
     /**
     * @api {delete} user/delete  删除用户
     * @apiDescription 删除用户
     * @apiName delete
     * @apiGroup User
     * @apiParam {Integer} user_id 用户ID
     * @apiSuccess  code 返回200
     * @apiSampleRequest http://basedemo.weidong100.com/user
     * @apiVersion 1.0.0
     */
     public function delete(){
        $UserModel = new UserModel;
        $user_id = input('id');
        return $UserModel->deleteUser($user_id);
    }
    
    public function getUserInfo(){
        $UserModel = new UserModel;
        $user_id = session('admin_id');
        // return $user_id;
        return $UserModel->findUser($user_id);
    }
    
    
}
