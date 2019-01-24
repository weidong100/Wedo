<?php
namespace app\adminapi\controller;
use think\Controller;
use think\Db;
use app\adminapi\model\OAuthM;
// use 

class Common extends Controller{
    
    public function _initialize()
    {
        header('Access-Control-Allow-Origin:*');
        header('Access-Control-Allow-Methods:GET,POST,PUT,DELETE');
        $oauth = new OAuthM();
        $result = $oauth->verify();
        if($result['code'] == 200){
            session('admin_id',$result['user_id']);
            // echo json_encode($result);
            // exit;
        }else{
            echo json_encode($result);
            exit;
        }
    }
}