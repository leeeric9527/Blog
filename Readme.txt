数据库课程设计-博客系统

Blog project

开发Blog项目


数据库：

选用mysql数据库
用户名：root
密码：123456
新建数据库名为blog,字符集设为：utf8 -- UTF-8 Unicode，排序规则:utf8generalci
运行blog.sql文件，导入数据库

部署：

将target目录下的XST-0.0.1-SNAPSHOT文件改名为blog文件夹，然后复制到tomcat的webapps目录下
运行tomcat服务器
在浏览器输入http://localhost:8080/blog/index即可显示主页