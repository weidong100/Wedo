<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

use think\Route;
Route::rest('create',['POST', '/create','create']);
Route::rule('sysDept/getRolesByDept', 'adminapi/SysDept/getRolesByDept', 'get');
Route::rule('sysMenu/getUserSysMenu', 'adminapi/SysMenu/getUserSysMenu', 'get');
Route::rule('sysRole/setRoleAuth', 'adminapi/SysRole/setRoleAuth', 'post');
Route::rule('sysUser/getUserInfo', 'adminapi/SysUser/getUserInfo', 'get');


return array (
  '__pattern__' => 
  array (
    'name' => '\w+',
  ),
  '[hello]' => 
  array (
    ':id' => 
    array (
      0 => 'index/hello',
      1 => 
      array (
        'method' => 'get',
      ),
      2 => 
      array (
        'id' => '\d+',
      ),
    ),
    ':name' => 
    array (
      0 => 'index/hello',
      1 => 
      array (
        'method' => 'post',
      ),
    ),
  ),
  '__rest__' => 
  array (
    'sysDict' => 'adminapi/SysDict',
    'sysDept' => 'adminapi/SysDept',
    'sysUser' => 'adminapi/SysUser',
    'sysRole' => 'adminapi/SysRole',
    'sysMenu' => 'adminapi/SysMenu'
  ),
);
