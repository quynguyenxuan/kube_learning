# https://headlamp.dev/docs/latest/installation/in-cluster/
# first add our custom repo to your local helm repositories
helm repo add headlamp https://headlamp-k8s.github.io/headlamp/

# now you should be able to install headlamp via helm
helm install my-headlamp headlamp/headlamp --namespace kube-system

# kubectl apply -f https://raw.githubusercontent.com/kinvolk/headlamp/main/kubernetes-headlamp.yaml