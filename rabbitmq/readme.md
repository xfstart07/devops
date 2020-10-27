# Rabbitmq

### 基本信息

* 管理界面端口：15672
* 服务端口：5672
* 用户：guest

## 使用

### 创建 Volume

```
docker volume create rabbitmq_store
```

## 运行 Compose 模式

```
docker-compose -f docker-compose.yml -p db up -d
```
