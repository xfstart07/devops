# Etcd

### mac 安装

运行命令

```bash
brew install etcd
```

如果有最近的版本可以更新`ETCD_VER`变量。

## Docker 运行

运行单个 etcd

```
docker-compose -f signal.yml up
```

运行集群

```
docker-compose -f cluster.yml up
```

## Ref

* https://github.com/etcd-io/etcd/releases