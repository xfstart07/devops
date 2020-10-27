#!/bin/bash
images=(
    kube-apiserver:v1.18.2
    kube-controller-manager:v1.18.2
    kube-scheduler:v1.18.2
    kube-proxy:v1.18.2
    pause:3.2
    etcd:3.4.3-0
    coredns:1.6.7
)

# pull images，修改 tag name
for imageName in ${images[@]} ; do
    docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName
    docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName k8s.gcr.io/$imageName
done

# 删除替代镜像
for imageName in ${images[@]} ; do
    docker rmi registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName
done
