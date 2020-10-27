yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager –add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum update -y && yum install -y containerd.io-1.2.13 docker-ce-19.03.8 docker-ce-cli-19.03.8

mkdir /etc/docker
cat > /etc/docker/daemon.json <<EOF
{
  "registry-mirrors": [
    "https://registry.docker-cn.com"
  ],
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2",
  "storage-opts": [
    "overlay2.override_kernel_check=true"
  ]
}
EOF

mkdir -p /etc/systemd/system/docker.service.d

systemctl daemon-reload
systemctl restart docker

systemctl enable docker.service
