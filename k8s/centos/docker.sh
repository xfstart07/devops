# Install Docker CE
## Set up the repository
### Install required packages.
yum install -y yum-utils device-mapper-persistent-data lvm2


### Add Docker repository.
yum-config-manager –add-repo https://download.docker.com/linux/centos/docker-ce.repo


## Install Docker CE.
yum update -y && yum install -y containerd.io-1.2.13 docker-ce-19.03.8 docker-ce-cli-19.03.8

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
  "storage-driver": "overlay2"
}
EOF

