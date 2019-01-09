---
title: 快速入门
description: 自动化框架PhoenixAutotest快速入门
weight: 100
toc: true
---

本文档主要介绍selenium自动化框架PhoenixAutotest，并且会用一个简单的demo来描述如何使用该框架。
  
# 预备知识

1. 集成开发工具（例如：IntelliJ IDEA）
2. Java 基础  
3. HTML 基础

本文档是基于idea来编写的，而且会使用骨架，推荐使用idea。如果您对其他环境很熟悉，可以选择其他工具。

# 框架介绍

1. 框架是基于selenium的web自动化框架，通过该框架可以简化测试人员的学习难度，只需要编写少量的JAVA代码即可。
2. 框架地址 https://github.com/LinuxSuRen/phoenix.webui.framework  
如果您需要查看源码，可以使用上面地址下载框架，如果刚刚入门，建议使用骨架。  
3. webdriver驱动下载器源码地址  
github地址：https://github.com/LinuxSuRen/autotest.webdriver.downloader
4. 自动化测试骨架的maven仓库地址  
http://mvnrepository.com/artifact/com.surenpi.autotest/autotest.web.framework.archetype
      

# 创建工程

按照如下的步骤插件示例工程

注意：最新的骨架版本为{{< mavenbadge "com.surenpi.autotest" "autotest.web.framework.archetype" >}}

```
<groupId>com.surenpi.autotest</groupId>
<artifactId>autotest.web.framework.archetype</artifactId>
<version>2.0.3-SNAPSHOT</version>
```

![image](http://www.pic68.com/uploads/2018/04/1(2).png)
![image](http://www.pic68.com/uploads/2018/04/2.png)
![image](http://www.pic68.com/uploads/2018/04/3.png)
![image](http://www.pic68.com/uploads/2018/04/4(1).png)
![image](http://www.pic68.com/uploads/2018/04/5.png)
![image](http://www.pic68.com/uploads/2018/04/6.png)
![image](http://www.pic68.com/uploads/2018/04/7.png)

根据上述的向导完成后，参考工程的 `README.md` 中的描述执行示例。

# 可能遇到的问题

如果运行demo后，启动浏览器后，但弹出chromedriver.exe停止工作，是驱动与版本不对应，请删除用户文件夹下的.autotest目录，并重新运行项目。

![image](http://pic68.com/uploads/2018/05/20180502180956.png)
     
如果最新版本驱动下载器不支持您当前的浏览器版本，可关闭自动下载驱动，手动下载驱动并在src/main/resources下的engine.properties文件中指定驱动路径。  
```
engine.autoLoad=false
webdriver.chrome.driver=C:/Users/home/surenpi/.autotest/surenpi.com.chromedriver
```  
     
如果运行demo后，无法正常关闭浏览器，请将shutdown方法修改为close方法,如下：  
```
try {
phoenix.close();
} catch (IOException e) {
e.printStackTrace();
```