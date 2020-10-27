## 安装

使用 MySQL 镜像版本 `mysql:5.7.23`

## 使用

### 创建 Volume

```
docker volume create mysql_store
```

## 运行 Compose 模式

```
docker-compose -f docker-compose.yml -p db up -d
```

`-p` 项目的名称，没有指定默认和服务名称相同。