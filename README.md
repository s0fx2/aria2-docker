### Aria2下载工具Docker镜像，方便迅速的搭建下载工作站。

支持QNAP（威联通）和Synology(群晖) NAS的容器工作站，支持armhf（树莓派）

- 开放端口：

	1. TCP：6800 Aria2 RPC 链接端口
	2. TCP：6881 Aria2 BT下载端口
	3. UDP：6882 DHT端口


- 开放目录：
	1. `/root/aria2/` 用于存放aria2配置文件，aria2的session状态保存文件还有DHT表文件，比较好的做法是将目录挂接到本地，然后放入自定义的aria2.conf配置文件，这样修改配置很方便，只需要启动和关闭容器即可。
	2. `/root/downloads` 是下载路径，请一定要记得挂接到本地，否则下载到容器内部，容器就爆了。

#### 更新日志：
- 18年3月9日：
	1. 更新armhf版到3.7
	2. 更新aria2 到1.33.1，树莓派可以欢快的玩耍了，同样要记住请挂载好文件夹再玩

- 18年2月14日：
	1. 增加2个开放端口

- 18年2月13日：

	1. Alpine 更新到3.7
	2. Aria2 更新到1.33.1

**好消息，armhf版已经更新啦，请到docker Hub寻找**

---
#### s0fx2/aria2-alpine: X86/64版
#### s0fx2/aria2-alpine-armhf: armhf版（Raspberry Pi）
