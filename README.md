# 知乎mini

知乎MINI是一个真实的网络问答社区，用户分享着彼此的专业知识、经验和见解。JavaEE+Tomcat+Oracle项目，拥有DAO层、SERVICE层、UI层（JSP、JSON+AJAX）三层架构

----------


## 总体设计 ##

#### **本系统使用Java2E+ORACLE方式进行** ####

 - 利用Ration rose 进行数据建模 
 - 利用ORACLE数据库进行数据库构建 
 - 利用eclipse进行编程

#### **本系统通过MVC三层架构** ####

- 利用JDBC(Java Database Connectivity)技术连接本系统MODEL层与ORACLE数据库
- 利用Java Servlet实现本系统CONTROLLER层
- 利用JSP实现本系统的VIEW层
- 利用Ajax异步实现点赞功能
- 利用JSON数据传输实现用户模块的数据传输

## 项目运行准备工作 ##
 - 数据库文件为src目录下的database.properties，这是导入项目后需要看的第一个文件，也是你项目运行需要唯一注意的文件
 - 项目启动前，看一下database.properties这个文件是不是和你本地的数据库统一（用户名以及密码），默认数据库为Oracle
 - 跟据需要，您应手动输入数据库数据
 - 完成以上的几点你的项目就已经成功跑起来了~
 

## 目录结构介绍 ##

	|-- build                                                   // 配置文件无需考虑
	|-- src                                                     // 源码目录
	|   |-- com
	|       |-- zhihu                                           // 源码
	|           |-- controller                                  // Servlet类与service交互
    |           |-- dao                                         // 单例模式dao类与CRUDUtil交互
	|           |-- dto                                         // 特殊的数据传输模型
    |           |-- model                                       // 模型层
    |           |-- serviceimpl                                 // service层的实现与dao交互
    |           |-- serviceint                                  // service层接口
    |           |-- test                                        // 单元测试层
    |           |-- util                                        // 数据库连接等Util
    |       |-- database.properties                             // 数据库配置文件
	|       |-- log4j.properties                                // log4j日志配置文件
    |-- WebContent                                              // 前端页面以及js、css部分
	|       |-- bootstrap                                       // 第三方提供的bootstrap
	|   	|-- css						                        // 第三方提供的css
	|   	|-- js 						                        // 第三方提供的js
	|       |-- images                                          // 图片素材文件
	|       |-- pages                                           // 关于固定页面部分的jsp
	|       |-- topic                                           // 关于topic页面部分的jsp
	|       |-- user                                            // 关于user页面部分的jsp
	|       |-- WEB-INF 
	|           | -- lib                 			            // jar 包存放位置
	|           | -- web.xml             			            // 项目及工具的依赖配置文件
	|-- README.md                        			            // 说明


## 项目功能 ##
![功能图](https://raw.githubusercontent.com/JavierJincheng/ZHIHUMINI/master/%E7%9F%A5%E4%B9%8Emini%E5%8A%9F%E8%83%BD%E5%9B%BE.png)