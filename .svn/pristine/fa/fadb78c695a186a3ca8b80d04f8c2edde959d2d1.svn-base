<?php
error_reporting(E_ERROR | E_WARNING | E_PARSE);
//递归重组节点信息为多维数组
function node_merge($node,$access = [],$pid = 0){
    $arr = array();
    foreach($node as $v){
        if($v['parent_id'] == $pid){
            $v['children'] = node_merge($node,$access,$v['menu_id']);
            if(in_array($v['menu_id'],$access)){
                $v['isCheck']=true;
            }else{
                $v['isCheck']=false;
            }
            $v['expand']=true;
            $arr[] = $v;
        }
    }
    return $arr;
}

//接口信息输出
function out_info($code,$tips,$data="",$count=0,$extra=[]){
    $datas['code']  = $code;
    $datas['msg']   = $tips;
    $datas['count'] = $count;
    $datas['data']  = $data;
    $datas['extra']  = $extra;
    echo json_encode($datas,JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);
    exit;
}