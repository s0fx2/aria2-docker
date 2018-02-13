aria2的Docker镜像，方便迅速安装下载工作站。

开放端口：6800

目录：/root/aria2/ 用于存放aria2配置文件，aria2的session状态保存文件还有DHT表文件，比较好的做法是将目录挂接到本地，然后放入自定义的aria2.conf配置文件，这样修改配置很方便，只需要启动和关闭容器即可。

目录：/root/downloads 是下载路径，请一定要记得挂接到本地，否则下载到容器内部，容器就爆了。

本次更新只更新了 x86版的aria2，armhf版暂未更新。


++aria2-alpine: X86/64版

++aria2-alpine-armhf: armhf版（Raspberry Pi）（目前还未更新）
