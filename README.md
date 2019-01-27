Wedo快速开发框架

根据数据表，快速生成控制器、模型、VUE界面、接口文档！

系统组成： 

PHP框架使用ThinkPHP5，官网：http://www.thinkphp.cn/ 

UI框架使用iview-admin，官网：https://www.iviewui.com/； 

接口文档使用apidoc，官网：http://apidocjs.com/;


系统默认

1、后台接口默认都写在application/adminapi模块

2、统一文件上传接口：adminapi/store/upload，你可以在public/admin/src/config/index.js中修改其他上传接口地址；

3、前端模板，系统自身功能界面都放在public/admin/src/view/admin中，你创建的界面，可以放在public/admin/src/view/下面；

4、前端的请求接口都封装到与控制器名称一致的JS接口，都放在public/admin/src/api文件夹下面；

5、接口文档，生成在public/apidoc中；

6、上传文件存放在public/uploads文件夹中；

7、我们把常用的功能接口，都写在adminapi/store中，例如上传接口；

8、配置文件：application/extra中store.php配置上传参数、site.php配置站点名称和api文档中的域名一致；


安装步骤：

1、配置数据库：application/database.php

2、配置VUE：public/admin/vue.config.js   ,现在默认是localhost

3、命令行：在public/admin下执行npm install，然后npm run dev，打包npm run build

   注：npm install 失败，可以使用npm淘宝镜像：http://npm.taobao.org/，然后cnpm install

4、进入后台，开始你的表演


接口生成： 

1、选择你要生成文件的模块； 

2、选择一个数据表，如sys_user表； 

3、生成控制器文件SysUser.php（带接口注释，符合restful标准）和模型文件SysUser.php； 

4、生成路由；


前端生成： 

1、选择一个接口（上步已经生成）； 

2、选择存放文件的目录； 

3、填写该功能的菜单配置； 

4、勾选该数据表中，每个字段的表单组件类型、哪些字段显示在列表、哪些字段用于搜索、哪些字段显示在编辑新增界面； 

例如：

姓名字段，使用输入框； 

出生日期，使用日期控件； 

头像，使用上传； 

简介，使用文本框； 

学历，使用下拉框，同时，你可以为该下拉框配置数据源接口。 

5、自定义界面中的按钮；

6、生成文件：sys_user.js    sys_user/index.vue

剩下就是在此基础上写逻辑代码......

如果你只需要生成接口文件，则只进行接口生成操作即可


技术qq交流群：
157261071

项目开发合作：
商务微信：chen110710

