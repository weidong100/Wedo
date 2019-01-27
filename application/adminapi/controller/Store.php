<?php
namespace app\adminapi\controller;
use think\Db;

class Store extends Common{
    //公共上传接口
    public function upload()
    {
        $file = request()->file('file');
        $path = input('path','common');
        $info = $file
                -> rule('date')
                -> validate(['size'=> config('store.uploadMaxSize'),'ext'=> config('store.ext')])
                -> move(ROOT_PATH . 'public' . DS . 'uploads' . DS . $path);
        if($info){
            $result = [
                'fileName' => $info->getFilename(),
                'filePath' => config('site.domain') . DS . 'public' . DS . 'uploads' . DS . $path . DS . $info->getSaveName(),
            ];
            out_info(200, '已保存', $result);
        }
        out_info(500, $file->getError());
    }
}