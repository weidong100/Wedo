<?php
namespace app\adminapi\controller;
use think\Controller;
use think\Request;
use think\Db;
use FileUtil\FileUtil;
//代码生成类
class Codebase extends Common{
	//获取数据表及目录列表
	public function getTableList(){
		$tableList  = getTableNameList();
		$path = input('path','cm');
		$moduleList = getModuleNameList($path);
		$tables = [];
		foreach($tableList as $k => $v){
			$tables[$k]['fullname'] = $v;
			$tables[$k]['simplename'] = tableNameToModelName(getTableName($v));
		}
		$data = [
			'tables'  => $tables,
			'modules' => $moduleList,
			'prefix'  => config('database.prefix')
		];
		out_info(200,'success',$data);
	}
	//获取目录文件
	public function getDirList(){
		$path = input('path');
		$type = input('type', 'App');
		$files = getDirAllList($path,$type);
		out_info(200, 'ok', $files);
	}
	//获取文件内容
	public function getFileContent(){
		$path = input('path');
		$type = input('type','App');
		$fullpath = $type == 'App' ? BASE_PATH . 'application' . DS .$path : BASE_PATH . config('view_create_file_path') . $path; 
		$content = file_get_contents($fullpath);
		$data = [
			'code' => 200,
			'data' =>$content
		];
		out_info(200, 'ok', $content);
	}
	//获取数据表字段
	public function getTableFields(){
		$table = input('table');
		if($table == '') out_info(500, '数据表名称为空');

		$query = 'SHOW FULL COLUMNS FROM '.$table;
		$fields = Db::query($query);
		$data = [];
		foreach($fields as $k=>$v){
			$data[$k]['field'] = $v['Field'];
			$data[$k]['com'] = $v['Comment'];
			$data[$k]['key'] = $v['Key'];
		}
		out_info(200,'success',$data);
	}
	//验证控制器模型文件路径
	public function verifyCmPath(){
		$save = [
			'selectTableName' => input('selectTableName/a'),
			'moduleName'      => input('moduleName'),
			'alias'           => input('alias/a')
		];
		session('create_cm_file_params',$save);
		$basePath = BASE_PATH . 'application' . DS . $save['moduleName'] . DS;
		$error = [];
		foreach($save['selectTableName'] as $k=>$v){
			$tableName = $save['alias'][$v] ? $save['alias'][$v] : getTableName($v);
			$controllerFilePath = $basePath . 'controller' . DS . tableNameToModelName($tableName) . '.php';
			$modelFilePath = $basePath . 'model' . DS . tableNameToModelName(getTableName($v)) . '.php';
			if(file_exists($controllerFilePath)){
				$error[] = [
					'code' => 501,
					'info' => '该模块下控制器' . tableNameToModelName($tableName) .'.php文件已存在'
				];
			}
			if(file_exists($modelFilePath)){
				$error[] = [
					'code' => 502,
					'info' => '该模块下模型' . tableNameToModelName(getTableName($v)) .'.php文件已存在'
				];
			}
		}
		if(!empty($error)){
			out_info(500, 'Error', $error);
		}
		return $this->creatAllFiles();
	}
	//控制器生成
	public function creatAllFiles(){
		$save = session('create_cm_file_params');
		$tableNameList = $save['selectTableName'];
		$moduleName = $save['moduleName'];
		$res = '';
		for($i = 0;$i < count($tableNameList); $i++){
			Request::instance()->post(['tableName'=> $tableNameList[$i]]);
			$res .= $this->generateControllerFile();
		}
		return $res;
	}
	//生成控制器文件
	public function generateControllerFile(){
		$save = session('create_cm_file_params');
		$moduleName = $save['moduleName'];	
		$alias = $save['alias'];
		$modelPath = APP_PATH . $moduleName . DS . 'controller' . DS;
		$tableName = $alias[input('tableName')] ? $alias[input('tableName')] : getTableName(input('tableName'));
		if(!file_exists($modelPath)){
			FileUtil::createDir($modelPath);
		}
		$code = $this->generateControllerCode();
		$filePath = $modelPath.tableNameToModelName($tableName).".php";
		file_put_contents($filePath, $code);
		$modelres = $this->createModelFile();
		//自动注册资源路由
		$routefile = BASE_PATH.'application/route.php';
		$route = require $routefile;
		$restName = columNameToVarName($tableName);
		$route['__rest__'][$restName] = $moduleName.'/'.tableNameToModelName($tableName);
		$routeContent = file_get_contents($routefile);
		$newRoute = 'return ' . var_export($route, TRUE);
		$newRouteContent = preg_replace("/return\s+[^\;]+/",$newRoute,$routeContent);
		file_put_contents($routefile, $newRouteContent);
		
		session('create_cm_file_params',null);
		return '生成成功，生成路径为：<br>&nbsp;&nbsp;&nbsp;&nbsp;控制器：'.$filePath.'<br>&nbsp;&nbsp;&nbsp;&nbsp;模型：'.$modelres.'<br>';
	}
	//生成控制器代码
	public function generateControllerCode(){
		$save = session('create_cm_file_params');
		$alias = $save['alias'];
		$initTableName = getTableName(input('tableName'));
		$tableName = $alias[input('tableName')] ? $alias[input('tableName')] : $initTableName;
		$moduleName = $save['moduleName'];
		$this->assign('modalname', $initTableName);
		$this->assign('tableName', $tableName);
		$this->assign('moduleName', $moduleName);
		//apiDoc
		$this->assign('rest',columNameToVarName($tableName));
		$this->assign('uperName',tableNameToModelName($tableName));
		$this->assign('apiGroup',tableNameToModelName($tableName));
		$this->assign('domain',config('site.domain'));
		
		$codelibName = config('codebase.codeLib') == '' ? 'iview' : config('codebase.codeLib');
		$codeBasePath = config('codebase.respository') . DS . $codelibName .DS;
		$template = file_get_contents($codeBasePath.'Controller'.DS.'controller.html');//读取模板.

		return config('codebase.php_head') . $this->display($template,[],[],['view_path'=>$codeBasePath.'Controller'.DS]);
	}
	//生成模型文件
	public function createModelFile(){
		$save = session('create_cm_file_params');
		$moduleName = $save['moduleName'];
		$modelPath = APP_PATH . $moduleName . DS . 'model' . DS;
		$tableName = getTableName(input('tableName'));
		if(!file_exists($modelPath)){
			FileUtil::createDir($modelPath);
		}
		$code = $this->generateModelCode();
		$filePath = $modelPath . tableNameToModelName($tableName) . ".php";
		file_put_contents($filePath, $code);
		return $filePath;
	}
	//生成模型代码源码
	public function generateModelCode(){
		$save = session('create_cm_file_params');
		$tableName = getTableName(input('tableName'));
		$moduleName = $save['moduleName'];
		$this->assign('tableName', $tableName);
		$this->assign('moduleName', $moduleName);
		$this->assign('trueTable', config('database.prefix').$tableName);
		$codelibName = config('codebase.codeLib') == '' ? 'iview' : config('codebase.codeLib');
		$codeBasePath = config('codebase.respository') . DS . $codelibName . DS;
		$template = file_get_contents($codeBasePath.'Model'.DS.'model.html');//读取模板
		return config('codebase.php_head') . $this->display($template,[],[],['view_path'=>$codeBasePath.'Model'.DS]);
	}

	//生成Vue前台
	public function verifyVuePath(){
		$path = input('path');
		$filename = input('file');
		$save = [
			"table"     => input('table'),
			"path"      => $path,
			"file"      => $filename,
			"component" => input('component'),
			"list"      => input('list/a'),
			"search"    => input('search/a'),
			"edit"      => input('edit/a'),
			"alias"     => input('alias/a'),
			"types"     => input('types/a'),
			"api"       => input('api/a'),
			"pk"        => input('pk'),
			"menu"      => input('menu/a')
		];
		//处理主要接口
		$api = [
			'listApi' => $save['api']['listApi'] ? $save['api']['listApi'] : 'listApi',
			'editApi' => $save['api']['editApi'] ? $save['api']['editApi'] : 'editApi',
			'createApi' => $save['api']['createApi'] ? $save['api']['createApi'] : 'createApi',
			'deleteApi' => $save['api']['deleteApi'] ? $save['api']['deleteApi'] : 'deleteApi',
		];
		$save['api'] = $api;
		session('create_vue_file_params', $save);
		$filePath = config('view_create_file_path') . 'view' . DS . $path . DS;
		$fileP = $filePath . $filename . ".vue";
		if(file_exists($fileP)){
			out_info(500, '该目录下此文件已存在，是否强制覆盖？');
		}
		$this->createVueFile();
	}
	//生成Vue文件
	public function createVueFile(){
		$save = session('create_vue_file_params') ? session('create_vue_file_params') : [];
		if(empty($save)) out_info(500, '请填写重要参数');
		$filePath = config('view_create_file_path') . 'view' . DS . $save['path'] . DS;
		$fileP = $filePath . $save['file'] . ".vue";
		if(!file_exists($filePath)){
			FileUtil::createDir($filePath);
		}
		$code = $this->generateVueCode();
		file_put_contents($fileP, $code);

		$this->createApiDoc($save['table'],$save['api']);
		$this->createMenu($save['menu']);

		session('create_vue_file_params', null);
		out_info(200, '生成成功，生成路径为：<br>' . $fileP);
	}
	//生成Vue代码
	public function generateVueCode(){
		$save = session('create_vue_file_params') ? session('create_vue_file_params') : [];
		//处理上传
		$uploads = []; 
		foreach($save['edit'] as $k => $v){
			if($save['types'][$v][0] == 'upload'){
				if($save['types'][$v][1] == 'single'){
					$uploads['single'][] = $v;
				}else{
					$uploads['multiple'][] = $v;
				}
				unset($save['edit'][$k]);
			}
		}
		//注册模版参数
		$this->assign('component', $save['component']);
		$this->assign('list', $save['list']);
		$this->assign('search', $save['search']);
		$this->assign('edit', $save['edit']);
		$this->assign('uploads', $uploads);
		$this->assign('alias', $save['alias']);
		$this->assign('types', $save['types']);
		$this->assign('api', $save['api']);
		$this->assign('pk', $save['pk']);
		$this->assign('apiDoc', getTableName($save['table']));

		$codelibName = config('codebase.codeLib') == '' ? 'iview' : config('codebase.codeLib');
		$codeBasePath = config('codebase.respository') . DS . $codelibName . DS;
		$template = file_get_contents($codeBasePath . 'Vue' . DS . 'index.html');
		return $this->display($template, [], [], ['view_path' => $codeBasePath . 'Vue' . DS]);
	}

	//接口生成
	protected function createApiDoc($table, $api){
		$basePath = BASE_PATH . config('view_create_file_path') . 'api' .DS;
		$controller = columNameToVarName(getTableName($table));
		$filePath = $basePath.getTableName($table).'.js';
		if(file_exists($filePath)){
			return false;
		}
		$content = 		'import axios from \'@/libs/api.request\'
		//'.$controller.' 列表接口
		export const '.$api['listApi'].' = (field) => {
			return axios.request({
				url:"restapi/'.$controller.'",
				method:"get",
				params:field
			})
		}
		//'.$controller.' 添加接口
		export const '.$api['createApi'].' = (field) => {
			return axios.request({
				url:"restapi/'.$controller.'/create",
				method:"post",
				data:field
			})
		}
		//'.$controller.' 编辑接口
		export const '.$api['editApi'].' = (field) => {
			return axios.request({
				url:"restapi/'.$controller.'/" + field.id,
				method:"put",
				data:field
			})
		}
		//'.$controller.' 删除接口
		export const '.$api['deleteApi'].' = (id) => {
			return axios.request({
				url:"restapi/'.$controller.'/" + id,
				method:"delete"
			})
		}';
		if(!file_exists($basePath)){
			FileUtil::createDir($basePath);
		}
		file_put_contents($filePath, $content);
		return true;
	}
	//创建前台菜单
	protected function createMenu($menu){
		$menu['type'] = 0;
		if($menu['parent_id']){
			$res = Db::name('sys_menu')->insert($menu);
			if(!$res) return false;
		}else{
			$parent = [
				'title'     => $menu['title'],
				'path'      => '/'.$menu['path'].'p',
				'component' => '',
				'icon'      => $menu['icon'],
				'sort'      => 0,
				'parent_id' => 0,
				'type'      => 0
			];
			Db::startTrans();
			try{
				$pid = Db::name('sys_menu')->insertGetId($parent);
				$menu['parent_id'] = $pid;
				Db::name('sys_menu')->insert($menu);
				Db::commit();
			}catch(\Exception $e){
				Db::rollback();
				return false;
			}
		}
		return true;
	}
}