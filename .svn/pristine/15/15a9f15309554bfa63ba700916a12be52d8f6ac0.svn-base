<?php
namespace app\adminapi\model;
use think\Model;
use think\Db;
use think\Exception\PDOException;

class UserModel extends Model
{
   public function selectUsers($where,$page,$pageSize){
        $count = Db::name('sys_user')
            ->alias('u')
            ->join(config('database.prefix').'sys_user_role ur', 'u.user_id=ur.user_id', 'left')
            ->join(config('database.prefix').'sys_role r', 'ur.role_id=r.role_id', 'left')
            ->join(config('database.prefix').'sys_dept d', 'd.dept_id=u.dept_id', 'left')
            ->where($where)
            ->count();
        $data = Db::name('sys_user')
            ->alias('u')
            ->field('u.username,u.user_id,u.del_flag,u.dept_id,u.create_time,d.name,d.dept_id,r.role_id,r.role_name')
            ->join(config('database.prefix').'sys_user_role ur', 'u.user_id=ur.user_id', 'left')
            ->join(config('database.prefix').'sys_role r', 'ur.role_id=r.role_id', 'left')
            ->join(config('database.prefix').'sys_dept d', 'd.dept_id=u.dept_id', 'left')
            ->where($where)
            ->order('u.user_id')
            ->page($page,$pageSize)
            ->select();
        if (!empty($data)) {
            return out_info(200,"ok",$data,$count);
        } else {
            return out_info(404,"暂无数据");
        }
        
    }
    
    public function insertUser($data, $role_id){
        
        // 启动事务
        Db::startTrans();
        try{
             $num = Db::name('sys_user')->insert($data);
             $userId = Db::name('sys_user')->getLastInsID();
             Db::name('sys_user_role') ->data(['user_id'=>$userId,'role_id'=>$role_id])->insert();
            // 提交事务
            Db::commit();  
            return out_info(200,"添加成功","",$num);
        } catch (\HttpException $e) {
            // 回滚事务
            Db::rollback();
            return out_info($e->getStatusCode(),"添加失败,".$e->getMessage());
        }
        
    }
    
    public function findUser($user_id){
       
        $data = Db::name('sys_user')
              ->field('user_id,username,avator')
              ->where("user_id",$user_id)->find();
        
               
        if ($data!==null) {
            $roles = db('sys_role')
               ->alias('r')
               ->join(config('database.prefix').'sys_user_role ur','ur.role_id=r.role_id','left')
               ->where('ur.user_id',$data['user_id'])
               ->column('role_code');
            $data['access'] = $roles;
            return out_info(200,"查询成功",$data,count($data));
        } else {
            return out_info(404,"该用户不存在");
        }
        
    }
    
    public function updateUser($data,$role_id){
      
      
         // 启动事务
        Db::startTrans();
        try{
            $num1 = Db::name('sys_user')
                ->where('user_id',$data['user_id'])
                ->update([
                    'username'  => $data['username'],
                    'dept_id' => $data['dept_id'],
                    'del_flag' => $data['del_flag'],
                    ]);
             $num = Db::name('sys_user_role')
                ->where("user_id",$data['user_id'])
                ->update(['role_id' => $role_id]);
             if($num1==$num){
                 $count = 1;
             }else{
                  return out_info(404,"更新失败","",0);
             }
            // 提交事务
            Db::commit();  
            return out_info(200,"更新成功","",$count);
        } catch (\HttpException $e) {
            // 回滚事务
            Db::rollback();
            return out_info($e->getStatusCode(),"更新失败,".$e->getMessage());
        }
    }
    
    public function deleteUser($user_id){
        
        $num = db('sys_user')->where('user_id',$user_id)->delete();
        if ($num>0) {
            return out_info(200,"删除成功","",$num);
        } else {
            return out_info(404,"该用户不存在");
        }
        
    }
}
