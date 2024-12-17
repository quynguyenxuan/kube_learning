# https://kubesphere.io/docs/v4.1/02-quickstart/01-install-kubesphere/
# https://kubesphere.io/docs/v4.1/03-installation-and-upgrade/02-install-kubesphere/02-install-kubernetes-and-kubesphere/
helm upgrade --install -n kubesphere-system --create-namespace ks-core https://charts.kubesphere.io/main/ks-core-1.1.2.tgz --debug --wait
kubectl get pods --namespace=kubesphere-system
# Account: admin
#     Password: P@88w0rd
