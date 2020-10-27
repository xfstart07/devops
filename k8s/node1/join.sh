echo "172.17.0.33 k8s-master" > /etc/hosts

# join
kubeadm join k8s-master:6443 --token v4zwly.vggs6kwpyizfxm0u --discovery-token-ca-cert-hash sha256:96bf9d4c566036b59948a735bc52efb634c14228fa310e9bdcf07755f087694a
