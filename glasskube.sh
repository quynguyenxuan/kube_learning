curl -LO https://releases.dl.glasskube.dev/glasskube_v0.26.0_amd64.deb
sudo dpkg -i glasskube_v0.26.0_amd64.deb

glasskube bootstrap
glasskube serve

helm repo add glasskube https://charts.glasskube.eu/
helm repo update
helm install my-glasskube-operator glasskube/glasskube-operator
#phức tạp