# docker 实践

常见服务的 docker 笔记

### 安装

在 Mac 环境下载可以去官网下载 Docker.app。

使用国内镜像服务：

```
https://registry.docker-cn.com
https://docker.mirrors.ustc.edu.cn
```

在 Docker.app 中修改Daemon的 registry-mirrors。

#### Linux

为了永久性保留更改，您可以修改 /etc/docker/daemon.json 文件并添加上 registry-mirrors 键值。

```
{
  "registry-mirrors": ["https://registry.docker-cn.com"]
}
```

## 常见服务

网络默认使用 bridge 模式，名称: local_net

```
docker network create -d bridge local_net
```

用 hostname 来识别容器。

默认使用 

### mysql

推荐使用 mysql.5.7 版本。当然也可以使用 8.0 以上的版本。

### redis

### postgresql

### kubernetes

在 Mac 中安装，可以参考 k8s-for-docker-desktop 项目。
