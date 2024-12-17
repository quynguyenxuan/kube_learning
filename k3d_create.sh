k3d cluster create $@ -p '6443:6443@loadbalancer' -p '9080:80@loadbalancer' -p '9443:443@loadbalancer' --agents 1 --k3s-arg '--disable=traefik@server:*'
kubectl apply -f https://raw.githubusercontent.com/rancher/local-path-provisioner/master/deploy/local-path-storage.yaml
