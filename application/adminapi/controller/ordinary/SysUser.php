<?php
namespace app\adminapi\controller\ordinary;
use app\adminapi\model\UserModel;
use app\adminapi\controller\Common;
use think\Db;

class SysUser extends Common
{
    public function getUserInfo(){
        $UserModel = new UserModel;
        $user_id = session('admin_id');
        return $UserModel->findUser($user_id);
    }

    
}
