<?php
//由ThinkphpHelper自动生成,请根据需要修改
namespace app\adminapi\model;

use think\Model;
use think\Db;

class SysDict extends Model {
		// 设置当前模型对应的完整数据表名称
	protected $table = 'wd_sys_dict';
	public function __construct()
	{
	    $this->db = Db::name('sys_dict');
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
        return $this->allowField(true)->save($data, ['id' => $data['id']]);
    }
	//删除
    public function del($request){
        $id = $request->param('id');
        return $this->where('id',  $id)->delete();
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
    public function lists($page, $pageSize, $where){
        $result['count'] = $this->db->where($where)->count();
        $result['data'] = $this->db->where($where)->page($page,$pageSize)->select();
        return $result;
    }
    
}	