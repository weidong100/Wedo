<?php
// 应用公共文件
header("Content-Type: text/html;charset=utf-8");



//转换带前缀的表名
//tableName:带前缀的表名
//首字母大写
function getTableName($tableName, $ucfirst = false){
	$prefix = config('database.prefix');
	if($prefix != ''){
		if(strpos($tableName, $prefix) === 0){
			$tableName = substr($tableName, strlen($prefix));
		}
	}
	if($ucfirst){
		return ucfirst($tableName); 
	}
	return $tableName ;
}
//获取表名列表
function getTableNameList(){
	$dbType = config('database.type');
	$Model = db(); // 实例化一个model对象 没有对应任何数据表
	if(in_array($dbType, array('mysql', 'mysqli'))){
	    
		$dbName = config('database.database');
		$result = Array();
		$tempArray = $Model->query("select table_name from information_schema.tables where table_schema='".$dbName."' and table_type='base table'");
		foreach($tempArray as $temp){
			$result[] = $temp['table_name'];
		}
		return $result;
	}
	return '数据库类型不支持';
}
//读取项目目录下的文件夹，供用户选择哪个才是module目录
function getModuleNameList($type = 'cm'){
	$ignoreList = config('codebase.ignoreList') ? config('codebase.ignoreList') : [];
	if($type == 'cm'){
		$path = BASE_PATH . 'application';
	}else if($type == 'view'){
		$path = BASE_PATH . 'public/admin/src/view';
	}
	$allFileList = getDirList($path);
	return array_diff($allFileList, $ignoreList);
}
//仅获取目录列表
function getDirList($directory){
	$files = array();        
	try {        
		$dir = new \DirectoryIterator($directory);        
	} catch (Exception $e) {        
		throw new Exception($directory . ' is not readable');        
	}        
	foreach($dir as $file) {        
		if($file->isDot()) continue;        
		if($file->isFile()) continue;        
		$files[] = $file->getFileName();        
	}        
	return $files;  
}
function getDirAllList($path, $type = 'App'){
	$files = array(); $sfiles = array();
	$ignoreList = config('tphconfig.ignoreList') ? config('tphconfig.ignoreList') : [];
	$directory = $type == 'App' ? BASE_PATH . 'application' . DS . $path : BASE_PATH . 'public' . DS . 'admin' . DS . 'src' . DS . $path;       
	try {        
		$dir = new \DirectoryIterator($directory);        
	} catch (Exception $e) {        
		throw new Exception($directory . ' is not readable');        
	}        
	foreach($dir as $file) {  
		if($file->isDot()) continue;
		if(in_array($file->getFileName(), $ignoreList)) continue; 
		$type = $file->isFile() ? 2 : 1;
		$single = [
			'type' => $file->isFile() ? 2 : 1,
			'name' => $file->getFileName()
		];   
		if($type == 1){
			$files[] = $single;
		}else{
			$sfiles[] = $single;
		}
	}       
	return array_merge($files, $sfiles);  
}
//把带下划线命名转换为驼峰命名（首字母大写）
function tableNameToModelName($tableName){
	$tempArray = explode('_', $tableName);
	$result = "";
	for($i = 0; $i < count($tempArray);$i++){
		$result .= ucfirst($tempArray[$i]);
	}
	return $result;
}
//把带下划线命名转换为驼峰命名（首字母小写）
function columNameToVarName($columName){
	$tempArray = explode('_', $columName);
	$result = "";
	for($i = 0; $i < count($tempArray);$i++){
		$result .= ucfirst($tempArray[$i]);
	}
	return lcfirst($result);
}

// 转化键名为小写-用于修正mysql information_schema返回键名在不同环境下大小写不同的问题
//$columInfoArray 返回的表信息
function changeColumCase($columInfoArray){
	$res = [];
	foreach($columInfoArray as $columInfo){
		$res[] = array_change_key_case($columInfo, CASE_LOWER);
	}
	return $res;
}

