# NSQIO

### 运行

```sh
docker-compose -f docker-compose.yml up -d
```

### 说明

nsqd 需要将广播地址配置成能访问的域名或IP地址，而不能使用默认的 hostname，因为从外部访问时是不认 hostname 的。