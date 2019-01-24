<?php
namespace app\adminapi\model;

use OAuth2\GrantType\RefreshToken;
use OAuth2\GrantType\UserCredentials;
use OAuth2\Request as ORequest;
use OAuth2\Response as OResponse;
use OAuth2\Scope;
use OAuth2\Server;
use OAuth2\Storage\Memory;
use OAuth2\Storage\Pdo as OPdo;

class OAuthM
{
    protected $db_config = [];
    protected $db_table_config = [
        'client_table' => 'oauth_clients',
        'access_token_table' => 'oauth_access_tokens',
        'refresh_token_table' => 'oauth_refresh_tokens',
        'code_table' => 'oauth_authorization_codes',
        'user_table' => '',
        'jwt_table'  => 'oauth_jwt',
        'jti_table'  => 'oauth_jti',
        'scope_table'  => 'oauth_scopes'
    ];
    
    public function __construct($dbC = [], $tableC = [], array $config = [])
    {
        $this->db_config = [
            'dsn'=> config('database.type').':host='.config('database.hostname').';dbname='.config('database.database'),
            'username'=> config('database.username'),
            'password'=> config('database.password')
        ];
        $this->db_table_config['user_table'] = config('database.prefix').'sys_user';
        $this->db_config = array_merge($this->db_config,$dbC);
        $this->db_table_config = array_merge($this->db_table_config,$tableC);
        $this->config = $config;
    }
    //创建OAuth Resource Owner Password Credentials (资源所有者密码凭证许可）对象
    public function createServer()
    {
        $storage = new OPdo($this->db_config, $this->db_table_config);
        $server = new Server($storage,$this->config);
        
        $defaultScope = 'basic';
        $memory = new Memory(array('default_scope' => $defaultScope));
        $scopeUtil = new Scope($memory);
        $server->setScopeUtil($scopeUtil);

        $grantType = new UserCredentials($storage);
        $grantType1 = new RefreshToken($storage);
        
        $server->addGrantType($grantType);
        $server->addGrantType($grantType1);
        
        return $server;
    }
    //获取token
    public function getTocken()
    {
        $server = $this->createServer();
        $response = $server->handleTokenRequest(ORequest::createFromGlobals());
        $result = $response->getParameters();
        $result['code'] =$response->getStatusCode();
        return $result;
    }
    //刷新token
    public function refreshTocken()
    {
        $server = $this->createServer();
        $response = $server->handleTokenRequest(ORequest::createFromGlobals());
        $result = $response->getParameters();
        $result['code'] =$response->getStatusCode();
        return $result;
    }
    //验证 成功返回用户ID
    public function verify()
    {
        $server = $this->createServer();
        $flag=$server->verifyResourceRequest(ORequest::createFromGlobals());
        $response = $server->getResponse();
        if ( !$flag ) {
            $result = $response->getParameters();
            $result['code'] =$response->getStatusCode();
        }else{
            $token = $server->getAccessTokenData(ORequest::createFromGlobals());
            $result['code'] =$response->getStatusCode();
            $result['user_id'] =$token['user_id'];
        }
        return $result;
    }
    
}