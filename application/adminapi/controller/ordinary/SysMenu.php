<?php
namespace app\adminapi\controller\ordinary;
use app\adminapi\controller\Common;
use think\Db;
use app\adminapi\model\SysMenu as SysMenumodel;
class SysMenu extends Common{
    
    public function getUserSysMenu()
    {
        if(input('access/a')){
            $map['r.role_code'] = ['in',input('access/a')];
        }else{
            $roles = db('sys_role')
                ->alias('r')
                ->join(config('database.prefix').'sys_user_role ur','ur.role_id=r.role_id','left')
                ->where('ur.user_id',session('admin_id'))
                ->column('r.role_code');
            if(!in_array('super_admin', $roles)){
                $map['r.role_code'] = ['in',$roles];
            }
        }
        $menuids = db('sys_role_menu')
                 ->alias('rm')
                 ->field('rm.menu_id')
                 ->join(config('database.prefix').'sys_role r','r.role_id=rm.role_id','left')
                 ->where($map)
                 ->distinct(true)
                 ->column('rm.menu_id');
        $where['type'] = 0;
        $where['menu_id'] = ['in', $menuids];
        $list = db('sys_menu')
              ->where($where)
              ->order('sort asc')
              ->select();
        foreach($list as $k=>$v){
            $ac = db('sys_role_menu')
                ->alias('rm')
                ->join(config('database.prefix').'sys_role r','rm.role_id=r.role_id','left')
                ->where('rm.menu_id',$v['menu_id'])
                ->column('r.role_code');
            $list[$k]['access'] = $ac;
        }
        $list = node_merge($list);

        $buttons = db('sys_menu')
                 ->where('type', 1)
                 ->where('parent_id', 'in', $menuids)
                 ->select();
        foreach($buttons as $k=>$v){
            $ac = db('sys_role_menu')
                ->alias('rm')
                ->join(config('database.prefix').'sys_role r','rm.role_id=r.role_id','left')
                ->where('rm.menu_id', $v['menu_id'])
                ->column('r.role_code');
            $buttons[$k]['access'] = $ac;
        }
        return json(['code'=>200,'data'=>$list,'extra'=>$buttons]);
    }
}