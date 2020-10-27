#!/bin/sh

# https://www.ilanni.com/?p=14534
# http://mirrors.ustc.edu.cn/help/dockerhub.html




install_k8s() {
    images=(
        kube-apiserver:v1.18.2
        kube-controller-manager:v1.18.2
        kube-scheduler:v1.18.2
        kube-proxy:v1.18.2
        pause:3.2
        etcd:3.4.3-0
        coredns:1.6.7
    )

    # pull tag name
    for imageName in ${images[@]} ; do
        #docker rmi k8s.gcr.io/$imageName
        docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName
        docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName k8s.gcr.io/$imageName
    done
}


# DockerMirror="docker.mirrors.ustc.edu.cn"
QuayReplaceMirror="quay.mirrors.ustc.edu.cn"
QuayIO="quay.io"

etcdTarget="$QuayIO/coreos/etcd"

docker pull $QuayMirror/coreos/etcd
docker tag $QuayMirror/coreos/etcd $etcdTarget

## TODO
# gcr.io 

# k8s.gcr.io 
install_k8s
