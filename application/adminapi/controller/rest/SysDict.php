<?php
namespace app\adminapi\controller\rest;

use think\Controller;
use app\adminapi\controller\Common;

class SysDict extends Common{
	protected $model = null;

	public function _initialize(){	
		$this->model = new \app\adminapi\model\SysDict;
	}
	
	/**
     * @api {get} SysDict/Index 
     * @apiDescription 
     * @apiName Index
     * @apiGroup SysDict     * @apiParam {int} page 页码
     * @apiParam {int} pageSize 分页大小
     * @apiSuccess  code 返回200
     * @apiSampleRequest http://basedemo.weidong100.com/sysDict     
     * @apiVersion 1.0.0
     */
    public function index(){
        $page = input('page',1);
        $pageSize = input('pageSize',10);
        input('label') && $where['label'] = ['like', '%' . input('label') . '%'];
        input('type') && $where['label'] = ['like', '%' . input('type')];
        $result = $this->model->lists($page, $pageSize, $where);
        out_info(200, 'success', $result['data'], $result['count']);
    }
	
	/**
     * @api {post} SysDict/Create 
     * @apiDescription 
     * @apiName Create
     * @apiGroup SysDict     
     * @apiParam 
     * @apiSuccess  code 返回200
     * @apiSampleRequest http://basedemo.weidong100.com/sysDict/create
     * @apiVersion 1.0.0
     */
	public function create(){
	    $data = $this->request;
		$flag = $this->model->add($data);
		if($flag){
			out_info(200,'添加成功');
		}else{
			out_info(200,'添加失败');
		}
	}
	
	/**
     * @api {put} SysDict/Update 
     * @apiDescription 
     * @apiName Update
     * @apiGroup SysDict     
     * @apiParam {int}  id 主键
     * @apiSuccess  code 返回200
     * @apiSampleRequest http://basedemo.weidong100.com/sysDict     
     * @apiVersion 1.0.0
     */
	public function update(){
		$flag = $this->model->edit($this->request);
		if($flag){
			out_info(200,'修改成功');
		}else{
			out_info(500,'修改失败');
		}
		
	}
	
	/**
     * @api {delete} SysDict/Delete 
     * @apiDescription 
     * @apiName Delete
     * @apiGroup SysDict     
     * @apiParam {int}  id 主键
     * @apiSuccess  code 返回200
     * @apiSampleRequest http://basedemo.weidong100.com/sysDict     
     * @apiVersion 1.0.0
     */
	public function delete(){
		$flag = $this->model->del($this->request);
		if($flag){
			return out_info(200,'删除成功');
		}else{
			return out_info(500,'资源不存在删除失败');
		}
	}
	
	/** 
     * @api {get} SysDict/Read 
     * @apiDescription 
     * @apiName Read
     * @apiGroup SysDict     
     * @apiParam {int}  id 主键
     * @apiSuccess  code 返回200  
     * @apiSampleRequest http://basedemo.weidong100.com/sysDict     
     * @apiVersion 1.0.0
     */
    public function read(){
        $result = $this->model->info($this->request);
        return out_info(200,'success',$result);
    }
	
}
