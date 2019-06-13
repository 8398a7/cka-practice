#!/bin/bash -x

# setup kubelet
local_ip=$(ifconfig | grep 10.240 | cut -d':' -f2 | cut -d' ' -f1)
sed -i "s/config.yaml/config.yaml --node-ip=$local_ip/" /etc/systemd/system/kubelet.service.d/10-kubeadm.conf
