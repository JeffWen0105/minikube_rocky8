#!/bin/bash

function install(){
  sudo yum install podman kubectl cockpit cri-o cri-tools cockpit-podman -y
  sudo systemctl enable --now crio
  sudo systemctl enable cockpit.socket --now
  curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
  sudo install minikube-linux-amd64 /usr/local/bin/minikube
}

log_info "Installing ...."
install