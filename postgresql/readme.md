## 使用 Compose 启动

### 创建 Volume

```
docker volume create pg_store
```

```
docker-compose -f docker-compose.yml -p db up -d
```

## Client

https://www.pgcli.com/install

连接 Docker 运行的 PG

```
pgcli --host=127.0.0.1 --user=postgres
```

注: 需要输入密码