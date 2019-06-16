#!/bin/bash -x

# pod-network-cidr for calico
kubeadm init --apiserver-advertise-address 10.240.0.10 --pod-network-cidr 192.168.0.0/16
