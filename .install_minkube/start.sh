#!/bin/bash


function start(){
  minikube start --driver=podman --container-runtime=cri-o --force
  sudo firewall-cmd --add-port=9090/tcp
  sudo firewall-cmd --runtime-to-permanent
}


log_info "MiniKube Starting ...."
start