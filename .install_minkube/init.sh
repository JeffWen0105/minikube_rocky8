
#!/bin/bash


function init(){
  sudo dnf -y install 'dnf-command(copr)'
  sudo dnf -y copr enable rhcontainerbot/container-selinux
  sudo curl -L -o /etc/yum.repos.d/devel:kubic:libcontainers:stable.repo https://download.opensuse.org/repositories/devel:kubic:libcontainers:stable/CentOS_8/devel:kubic:libcontainers:stable.repo
  sudo curl -L -o /etc/yum.repos.d/devel:kubic:libcontainers:stable:cri-o:${VERSION}.repo https://download.opensuse.org/repositories/devel:kubic:libcontainers:stable:cri-o:${VERSION}/CentOS_8/devel:kubic:libcontainers:stable:cri-o:${VERSION}.repo
  echo "tgc101" | passwd --stdin root
}

log_info "Init ...."
init