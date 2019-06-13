#!/bin/bash -x

# pod-network-cidr for calico
kubeadm init --apiserver-advertise-address 10.240.0.10 --pod-network-cidr 192.168.0.0/16

# setup kubeconfig
sudo su - vagrant
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# setup calico
kubectl apply -f https://docs.projectcalico.org/v3.7/manifests/calico.yaml
