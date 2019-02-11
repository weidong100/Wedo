<?php
error_reporting(E_ERROR | E_WARNING | E_PARSE);
//递归重组菜单权限节点信息为多维数组
function node_merge($node,$access = [],$pid = 0,$idKey = 'menu_id'){
    $arr = array();
    foreach($node as $v){
        if($v['parent_id'] == $pid){
            $v['children'] = node_merge($node,$access,$v[$idKey],$idKey);
            if(in_array($v[$idKey],$access)){
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

//普通节点递归为多维数组
function ord_merge($node, $pid = 0, $idKey = 'id', $pidKey = 'parent_id'){
    $arr = array();
    foreach($node as $v){
        if($v[$pidKey] == $pid){
            $v['children'] = ord_merge($node, $access, $v[$idKey], $idKey, $pidKey);
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