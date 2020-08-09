   用户密码经过加密处理的， test/123456
   admin/123
    数据库中的密码全部123  202CB962AC59075B964B07152D234B70
    
    经过md5加密处理
    
    这个系统开发的开发环境：
开发工具：MyEclipse2010版
数据库：MySql+HeidiSql
JDK：MyEclipse2010自带的JDK1.7
Tomact：MyEclipse自带的Tomcat7.0
核心jar包：Struts2+Hibernate3+Spring4

项目的编译和运行：
1 将数据库导入MysSql里 ：打开HeidiSql这个图形化工具，新建一个数据库，
  可以命名为mycrmdb，然后选中这个数据库，右侧的蓝色Query，
  右键弹出点击Load SQL file，然后选择crm.sql文件，进行创建表。
2 将项目导入到MyEclipse：在MyEclipse里
  file->import->General->Existing project into Workspace
  选择MyCrm.zip 导入
3 部署tomcat：在界面的正下方，
   servers->MyEclipse Tomcat 7 右键->add Depoyment->
   选择MyCrm 和add tomcat 7->ok
4 启动tomcat服务器，打开浏览器，访问项目
   http://localhost:8080/MyCrm