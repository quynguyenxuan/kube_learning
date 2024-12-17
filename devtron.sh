# https://docs.devtron.ai/install/install-devtron-on-minikube-microk8s-k3s-kind

helm repo add devtron https://helm.devtron.ai

helm repo update devtron

helm install devtron devtron/devtron-operator \
--create-namespace --namespace devtroncd \
--set components.devtron.service.type=NodePort

kubectl get pods --namespace=devtroncd
# uninstall
# helm uninstall devtron --namespace devtroncd

# kubectl delete -n devtroncd -f https://raw.githubusercontent.com/devtron-labs/charts/main/charts/devtron/crds/crd-devtron.yaml

# kubectl delete -n argo -f https://raw.githubusercontent.com/devtron-labs/devtron/main/manifests/yamls/workflow.yaml

# kubectl delete ns devtroncd devtron-cd devtron-ci devtron-demo argo
