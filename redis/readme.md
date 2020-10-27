## 使用 Compose 模式

创建卷

```
docker volume create redis_store
```

运行

```
docker-compose -p cache up -d
```

`-p` 是项目的名字，如果是做集群，那么就可以单独起一个 redis 的项目。

## swarm mode

1. 将 redis.conf 创建在 configs，命名为 redis.conf
2. 创建一个数据卷，名为 redis_store，将 redis_store 挂到 /data，因为 redis.conf 中数据存储的配置路径是 /data

