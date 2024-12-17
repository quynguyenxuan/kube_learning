helm repo add portainer https://portainer.github.io/k8s/
helm repo update

# helm install --create-namespace -n portainer portainer portainer/portainer
helm upgrade --install --create-namespace -n portainer portainer portainer/portainer 
#\
#?    --set service.type=LoadBalancer \
#   --set image.tag=2.21.4
# https://rpi4cluster.com/k3s-portainer-ui/
# https://docs.portainer.io/start/install-ce/server/kubernetes/baremetal