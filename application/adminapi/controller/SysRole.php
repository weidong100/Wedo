<?php
namespace app\adminapi\controller;
use think\Controller;
use app\adminapi\model\RoleModel;
use think\Db;

class SysRole extends Common
{
    /**
     * @api {get} role  角色列表
     * @apiDescription  部门角色列表
     * @apiName index
     * @apiGroup Role
     * @apiParam {string} role_name 角色名称
     * @apiParam {Integer} dept_id  部门ID
     * @apiParam {Integer} page 页码
     * @apiParam {Integer} pageSize 分页大小
     * @apiSuccess  code 返回200
     * @apiSampleRequest http://basedemo.weidong100.com/role
     * @apiVersion 1.0.0
     */
    public function index(){
       	$RoleModel = new RoleModel;
       	$where = null;
       	$roleName = trim(input('role_name'));
       	// return json(input());
       	if($roleName){
            $where['role_name'] = ['like','%'.$roleName.'%'];
        }
        $deptId = input('dept_id');
        if($deptId){
            $where['dr.dept_id'] = $deptId;
        }
        $page = input('get.page',1);
        $pageSize = input('get.pageSize',10);
        return $RoleModel->selectRoles($where,$page,$pageSize);
    }
    
    
    /**
     * @api {post} role/create 添加角色
     * @apiDescription 添加角色
     * @apiName create
     * @apiGroup Role
     * @apiParam {string} role_name 角色名称
     * @apiParam {string} role_code 角色标识
     * @apiParam {string} role_desc 角色描述
     * @apiParam {Integer} dept_id  部门ID
     * @apiSuccess  code 返回200
     * @apiSampleRequest http://basedemo.weidong100.com/role/create
     * @apiVersion 1.0.0
     */
    public function create(){
         $RoleModel = new RoleModel();
         $data['role_name'] = input('role_name');
         $data['role_code'] = input('role_code');
         $data['role_desc'] = input('role_desc');
         $dept_id = input('dept_id');
        return $RoleModel->insertRole($data,$dept_id);
    }
    
    /**
     * @api {get} role/read  查询角色
     * @apiDescription 根据id查询某个角色
     * @apiName read
     * @apiGroup Role
     * @apiParam {int}   id 角色ID
     * @apiSuccess  code 返回200
     * @apiSampleRequest http://basedemo.weidong100.com/role
     * @apiVersion 1.0.0
     */
    public function read(){
         
        $RoleModel = new RoleModel;
        $role_id = input("id");
        return $RoleModel->findRole($role_id);
    }
    
     /**
     * @api {put} role/update 更新角色
     * @apiDescription 更新角色
     * @apiName update
     * @apiGroup Role
     * @apiParam {Integer} role_id 部门ID
     * @apiParam {string} role_name 角色名称
     * @apiParam {string} role_code 角色标识
     * @apiParam {string} role_desc 角色描述
     * @apiParam {Integer} dept_id 部门ID
     * @apiSuccess  code 返回200
     * @apiSampleRequest http://basedemo.weidong100.com/role
     * @apiVersion 1.0.0
     */
    public function update(){
         $RoleModel = new RoleModel();
         $data['role_id'] = input('id');
         $data['role_name'] = input('role_name');
         $data['role_code'] = input('role_code');
         $data['role_desc'] = input('role_desc');
         $dept_id = input('dept_id');
        return $RoleModel->updateRole($data,$dept_id);
    }
    
    /**
     * @api {delete} role/delete  删除角色
     * @apiDescription 删除角色
     * @apiName delete
     * @apiGroup Role
     * @apiParam {Integer} role_id 角色ID
     * @apiSuccess  code 返回200
     * @apiSampleRequest http://basedemo.weidong100.com/role
     * @apiVersion 1.0.0
     */
    public function delete(){
        $RoleModel = new RoleModel;
        $role_id = input('id');
        return $RoleModel->deleteRole($role_id);
    }
    public function setRoleAuth(){
        $role_id = input('role_id');
        $menus = explode(',',input('menus'));
        $arr=[];
        foreach($menus as $k=>$v){
            $data=[
                'menu_id' => $v,
                'role_id' =>$role_id
            ];
            $arr[] = $data;
        }
        Db::startTrans();
        try{
            Db::name('sys_role_menu')->where('role_id',$role_id)->delete();
            Db::name('sys_role_menu')->insertAll($arr);
            Db::commit();
            
        }catch(\Exception $e){
            Db::rollback();
            out_info(500,'失败');
        }
        out_info(200,'成功');
    }
    
    /* public function getRoleDept(){
       
       $data =Db::field('d.name,d.dept_id,r.role_name,r.role_id,r.role_desc,r.role_code,r.create_time')
             ->table('sys_dept d,sys_role r,sys_role_dept dr')
             ->where('dr.role_id=r.role_id')
             ->where('dr.dept_id=d.dept_id')
             ->page($page,$pageSize)
             ->select();
    
        dump($data);
    }*/
    
     /**
     * @api {post} role/auth  权限分配
     * @apiDescription 权限分配
     * @apiName auth
     * @apiGroup Role
     * @apiParam {Integer} role_id 角色ID
     * @apiParam {string} menuIds 菜单ID集合
     * @apiSuccess  code 返回200
     * @apiSampleRequest http://basedemo.weidong100.com/adminapi/role/auth
     * @apiVersion 1.0.0
     */
    public function auth(){
         $menuIds = input('menuIds');
         $role_id = input('role_id');
         $data_menuid = explode(',',$menuIds);
         $datas=array();
         for ($i = 0; $i < count($data_menuid); $i++) {
              $datas[$i]=['role_id'=>$role_id,'menu_id'=>$data_menuid[$i]];
         }
         $cou =  Db::name('sys_role_menu')->insertAll($datas);
         if ($cou>0) {
             return out_info(200,"分配成功");
         } else {
             return out_info(404,"分配失败");
         }
         
    }
    
}
