#  MiniKube Start On RockyLinux 8

## 建議需求

- RAM : >= 4G
- CPU : >= 2
- Disk : >= 40G
- OS : Rocky Linux 8

## 套件需求

- git

`dnf install -y git`


## 使用方式

請使用非 root 角色執行

```
git clone https://github.com/JeffWen0105/minikube_rocky8.git && \
 cd minikube_rocky8 && bash minikube_tibama_rocky8.sh
```

## 使用元素

- [cri-o](https://cri-o.io/)
- [podman](https://podman.io/)
