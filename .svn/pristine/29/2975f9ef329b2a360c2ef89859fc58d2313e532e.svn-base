<?php
namespace app\adminapi\controller;

use think\Controller;
use think\Db;
use app\adminapi\model\OAuthM;

class Login extends Controller{
    public function _initialize()
    {
        header('Access-Control-Allow-Origin:*');
        header('Access-Control-Allow-Methods:GET,POST,PUT,DELETE');
    }
    public function index()
    {
        // return json(input());
        $oauth = new OAuthM();
        $result = $oauth->getTocken();
        if($result['code'] == 200){
            $userId = Db::table('oauth_access_tokens')
                    ->where('access_token',$result['access_token'])
                    ->value('user_id');
            
            session('admin_id',$userId);
        }
        return json($result);
    }
}
