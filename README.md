# 师生博客系统

#### 1、项目环境

SpringBoot 2.1.5.RELEASE

Maven 3.5.2

Tomcat 8

jdk1.8

#### 2、技术栈

技术栈：Spring+Springmvc+Mybatis+SpringBoot+Mysql+Redis+Thymeleaf+Kafka+ElasticSearch+Quartz+Caffine

#### 3、项目启动方式

配置mysql、七牛云等信息。

打开zookeeper、kafka、elasticsearch、redis。



F:\JavaTools\redis-2.8.9>redis-server.exe redis.windows.conf

F:\JavaTools\kafka_2.12-2.3.0>bin\windows\zookeeper-server-start.bat config\zookeeper.properties

F:\JavaTools\kafka_2.12-2.3.0>bin\windows\kafka-server-start.bat config\server.properties

打开es的bin目录，打开es.bat

开发环境使用application-dev，生产环境使用application-pro，生产环境需要重新配置文件目录地址

#### 4、提供的账号
权限分为普通用户、管理员<br/>
2017331200029-2017331200042 学生账号　　密码：123456<br/>
29-33为男同学，34-38为女同学<br/>
29、30、34、35为管理员账号<br/>

20170029-20170031 老师账号　　密码：123456<br/>
29-30为男老师，31-32为女老师<br/>
29-31为管理员，32为普通用户<br/>

管理员可以查看网站独立访客和活跃用户数：<br/>
http://localhost:8080/community/data<br/>
管理员可以到一个统一管理的页面，激活、拉黑某个用户，设置某个用户的权限，管理所有博客或评论，有删除的权限：<br/>
http://localhost:8080/community/manage 

个人主页，我的评论。给评论的评论是不会显示在这个列表的，只有给博客的评论才会显示。<br/>
最新帖子，置顶是有最高优先级的，然后按照时间降序排序。<br/>
最热帖子，是按照博客发布时间、点赞数、评论数、是否加精，每2小时进行一次博客分数刷新。越新发布的帖子越有可能成为热帖，时间对分数的占比还是很大的，博客是否置顶不影响热帖排行。首先按照分数进行排序，然后按照时间降序进行排序。<br/>