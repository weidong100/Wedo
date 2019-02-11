<?php
namespace app\adminapi\model;
use think\Model;
use think\Db;
class SysMenu extends Model{
    
     /**
	 * [getList  分页]
	 * @Author   GetList
	 */
   public function getList($where){
       
       $result = Db::name('sys_menu')->where($where)->order('sort asc')->select();
       return $result;
   }
    
    /**
	 * [insert 菜单添加]
	 * @Author   InsertMe
	 */
    public function insertMe($data){
        $result = Db::name('sys_menu')->insert($data);
        return $result;
    }
    
     /**
	 * [update 修改菜单]
	 * @Author   Updat
	 */
	 public function updat($data,$id)
	 {
	     $result = Db::name('sys_menu')->where('menu_id',$id)->update($data);
	     return $result;
	 }
	 
	 
	 /**
	 * [delete  删除菜单]
	 * @Author   Delet
	 */
	 public function delet($id)
	 {
		 Db::startTrans();
		 try{
			Db::name('sys_menu')->where('menu_id',$id)->delete();
			$children = Db::name('sys_menu')->where('parent_id',$id)->column('menu_id');
			Db::name('sys_menu')->where('parent_id',$id)->delete();
			Db::name('sys_role_menu')->where('menu_id',$id)->delete();
			Db::name('sys_role_menu')->where('menu_id', 'in', $children)->delete();
			Db::commit();
		 }catch(\Exception $e){
			Db::rollback();
	     	return false;
		 }
	     return true;
	 }
	 
    /**
	 * [select  查询]
	 * @Author   find
	 */
	 public function find($menu_id)
	 {
	     $result = Db::name('sys_menu')->where('menu_id',$menu_id)->find();
	     return $result;
	 }
}