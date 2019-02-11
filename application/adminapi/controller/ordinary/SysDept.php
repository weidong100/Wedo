<?php
// +----------------------------------------------------------------------
// | Wedo [ 快速搭建后台和生成前端API ]
// +----------------------------------------------------------------------
// | 初衷：用本软件，取代不上进只会写增删改查基础代码的程序员的工作！
// +----------------------------------------------------------------------
// | 流程：1大神创建数据表》》2保洁阿姨生成整套系统框架》》3大神完善逻辑代码》》4上线
// +----------------------------------------------------------------------
// | 主页：https://github.com/weidong100/Wedo
// +----------------------------------------------------------------------
// | 出品: 青岛微动一百网络有限公司    技术交流QQ群（157261071）
// +----------------------------------------------------------------------

namespace app\adminapi\controller\ordinary;

use think\Controller;
use app\adminapi\controller\Common;
use think\Db;

class SysDept extends Common{
    
    public function getRolesByDept(){
        $deptId = input('dept_id');
        $roles = db('sys_role')
               ->alias('r')
               ->field('r.role_id,r.role_name')
               ->join(config('database.prefix').'sys_role_dept rd','r.role_id=rd.role_id','left')
               ->where('rd.dept_id',$deptId)
               ->select();
        out_info(200, 'ok', $roles);
    }
	
}
