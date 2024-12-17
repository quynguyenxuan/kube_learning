helm repo add jetstack https://charts.jetstack.io --force-update
helm install \
  cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --create-namespace \
  --version v1.16.2 \
  --set crds.enabled=true
kubectl get pods --namespace=cert-manager


# helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
# helm repo update
# helm install quickstart ingress-nginx/ingress-nginx
# kubectl get svc