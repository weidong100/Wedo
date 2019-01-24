<?php
namespace app\adminapi\controller;
use think\Controller;
use think\Db;
class Open extends Controller{
    public function getUserMenu()
    {
        $map = null;
        if(input('access/a')){
            $map['role_code'] = ['in',explode(input('access/a'))];
        }
        $list = db('sys_menu')->where($map)->select();
        foreach($list as $k=>$v){
            $ac = db('sys_role_menu')
                ->alias('rm')
                ->join(config('database.prefix').'role r','rm.role_id=r.role_id','left')
                ->where('rm.menu_id',$v['menu_id'])
                ->column('r.role_code');
            $list[$k]['access'] = $ac;
        }
        $list = node_merge($list);
        return json(['code'=>200,'data'=>$list]);
    }
}
