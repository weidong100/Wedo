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

namespace app\adminapi\controller\rest;

use think\Controller;
use app\adminapi\controller\Common;

class SysDept extends Common{
	protected $model = null;

	public function _initialize(){	
		$this->model = new \app\adminapi\model\SysDept;
	}
	
	/**
     * @api {get} SysDept/Index 
     * @apiDescription 
     * @apiName Index
     * @apiGroup SysDept     * @apiParam {int} page 页码
     * @apiParam {int} pageSize 分页大小
     * @apiSuccess  code 返回200
     * @apiSampleRequest http://localhost:8888/sysDept     
     * @apiVersion 1.0.0
     */
    public function index(){
        $where = null;
        $list = $this->model->lists($where);
        // dump($list);
        $list = ord_merge($list, 0, 'dept_id');
        out_info(200, 'success', $list);
    }
	
	/**
     * @api {post} SysDept/Create 
     * @apiDescription 
     * @apiName Create
     * @apiGroup SysDept     
     * @apiParam 
     * @apiSuccess  code 返回200
     * @apiSampleRequest http://localhost:8888/sysDept/create
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
     * @api {put} SysDept/Update 
     * @apiDescription 
     * @apiName Update
     * @apiGroup SysDept     
     * @apiParam {int}  id 主键
     * @apiSuccess  code 返回200
     * @apiSampleRequest http://localhost:8888/sysDept     
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
     * @api {delete} SysDept/Delete 
     * @apiDescription 
     * @apiName Delete
     * @apiGroup SysDept     
     * @apiParam {int}  id 主键
     * @apiSuccess  code 返回200
     * @apiSampleRequest http://localhost:8888/sysDept     
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
     * @api {get} SysDept/Read 
     * @apiDescription 
     * @apiName Read
     * @apiGroup SysDept     
     * @apiParam {int}  id 主键
     * @apiSuccess  code 返回200  
     * @apiSampleRequest http://localhost:8888/sysDept     
     * @apiVersion 1.0.0
     */
    public function read(){
        $result = $this->model->info($this->request);
        return out_info(200,'success',$result);
    }
	
}
