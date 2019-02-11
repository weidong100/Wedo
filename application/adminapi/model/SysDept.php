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

namespace app\adminapi\model;

use think\Model;
use think\Db;

class SysDept extends Model {
	// 设置当前模型对应的完整数据表名称
	// protected $table = 'wd_sys_dept';
	protected function initialize()
	{
		parent::initialize();
	    $this->db = Db::name('sys_dept');
	}
	//新增
    public function add($request){
        $data = $request->param();
        foreach($data as $key=>$val){
            if(is_array($val)){    //处理checkbox情况
                $data[$key] = implode(",", $val);
            }
        }
        return $this->data($data)->allowField(true)->save();
    }
	//修改
    public function edit($request){
        $data = $request->param();
        foreach($data as $key=>$val){
            if(is_array($val)){    //处理checkbox情况
                $data[$key] = implode(",", $val);
            }
        }
        return $this->allowField(true)->save($data, ['dept_id' => $data['id']]);
    }
	//删除
    public function del($request){
        $id = $request->param('id');
        return $this->db->delete($id);
    }
	//批量删除
    public function delList($request){
        $condition = $request->request('condition');
        return $this->destroy(json_decode($condition));
    }
	//id单个查询
    public function info($request){
        $id = $request->param('id');		
        return $this->where('id', $id)->find();
    }
	//列表
    public function lists($where){
        $result = $this->db->where($where)->select();
        return $result;
    }
    
}	