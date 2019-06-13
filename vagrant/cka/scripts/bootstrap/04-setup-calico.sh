#!/bin/bash -x

# setup kubeconfig
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# setup calico
kubectl apply -f https://docs.projectcalico.org/v3.7/manifests/calico.yaml
