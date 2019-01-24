<?php
namespace app\adminapi\model;
use think\Db;
use think\Model;

class RoleModel extends Model
{
    public function selectRoles($where,$page,$pageSize){
        
        $data =Db::name('sys_role')
             ->alias('r')
             ->field('d.name,d.dept_id,r.*')
             ->join(config('database.prefix').'sys_role_dept dr','dr.role_id=r.role_id','left')
             ->join(config('database.prefix').'sys_dept d','dr.dept_id=d.dept_id','left')
             ->where($where)
             ->page($page,$pageSize)
             ->select();
        $count =Db::name('sys_role')
             ->alias('r')
             ->field('d.name,d.dept_id,r.*')
             ->join(config('database.prefix').'sys_role_dept dr','dr.role_id=r.role_id','left')
             ->join(config('database.prefix').'sys_dept d','dr.dept_id=d.dept_id','left')
             ->where($where)->count();
        if (!empty($data)) {
            return out_info(200,"ok",$data,$count);
        } else {
            return out_info(404,"暂无数据");
        }
        
    }
    
    public function insertRole($data,$dept_id){
        $role_id = Db::name('sys_role')->insertGetId($data);
        $num =Db::name('sys_role_dept')->data(['role_id'=>$role_id,'dept_id'=>$dept_id])->insert();
        if ($num>0) {
            return out_info(200,"添加成功","",$num);
        } else {
            return out_info(404,"添加失败");
        }
        
    }
    
    
    public function findRole($role_id){
       
        $data = Db::name('sys_role')->where("role_id",$role_id)->find();
       
        if ($data!==null) {
            return out_info(200,"查询成功",$data,count($data));
        } else {
            return out_info(404,"该角色不存在");
        }
        
    }
    
    public function updateRole($data,$dept_id){
        Db::startTrans();
        try{
            $num1=Db::name('sys_role')
                ->where('role_id',$data['role_id'])
                ->update([
                   'role_name'=>$data['role_name'],
                   'role_code'=>$data['role_code'],
                  'role_desc'=>$data['role_desc']
               ]);
            $num2=Db::name('sys_role_dept')
                ->where('role_id',$data['role_id'])
                ->update(['dept_id'=>$dept_id]);
        
                 Db::commit();
                return out_info(200,"更新成功");
            } catch (\Exception $e) {
               // 回滚事务
               Db::rollback();
               return out_info(404,$e.getMessage());
            }
        
    } 
    public function deleteRole($role_id){
        
        $num = Db::name('sys_role')->where('role_id',$role_id)->delete();
        if ($num>0) {
            return out_info(200,"删除成功","",$num);
        } else {
            return out_info(404,"该角色户不存在");
        }
        
    }
    
}
