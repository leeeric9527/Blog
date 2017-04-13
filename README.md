数据库课程设计-博客系统 

# Blog project

开发Blog项目


## 团队成员:

* bissolee 
* CrazyCodess
* 路凯程
* 马鑫豪

## 数据库(根据自己配置修改文件Blog/src/main/resources/conf/mysql.properties)
1. 选用mysql数据库
2. 用户名：root
3. 密码：123456
4. 新建数据库名为blog,字符集设为：utf8 -- UTF-8 Unicode，排序规则:utf8_general_ci
5. 运行blog.sql文件，导入数据库

##  部署
1. 将target目录下的XST-0.0.1-SNAPSHOT文件改名为blog文件夹，然后复制到tomcat的webapps目录下
2. 运行tomcat服务器
3. 在浏览器输入http://localhost:8080/blog/index即可显示主页
