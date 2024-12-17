# https://kubernetes.github.io/ingress-nginx/deploy/?ref=blog.thenets.org#bare-metal
helm upgrade --install ingress-nginx ingress-nginx \
  --repo https://kubernetes.github.io/ingress-nginx \
  --namespace ingress-nginx --create-namespace
kubectl get pods --namespace=ingress-nginx

# https://docs.rancherdesktop.io/how-to-guides/setup-NGINX-Ingress-Controller
# helm upgrade --install ingress-nginx ingress-nginx \
#   --repo https://kubernetes.github.io/ingress-nginx \
#   --namespace ingress-nginx --create-namespace

# kubectl create deployment demo --image=httpd --port=80
# kubectl expose deployment demo

# kubectl create deployment demo --image=nginx --port=80
# kubectl expose deployment demo