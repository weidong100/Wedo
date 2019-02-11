<?php
namespace app\adminapi\controller\ordinary;
use think\Controller;
use app\adminapi\model\RoleModel;
use app\adminapi\controller\Common;
use think\Db;
class SysRole extends Common
{
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
