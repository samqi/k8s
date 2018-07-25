# Piktochart - Kubernetes deployment
-----
Deployment example of a simple Go app deployment for Kubernetes

1. Clone this repo
```
git@github.com:samqi/pikto-k8s.git
cd pikto-k8s/
```

2. Use Helm to manage deployments - Install and initialise Helm & access
```
#helm install 
wget https://storage.googleapis.com/kubernetes-helm/helm-v2.9.1-linux-amd64.tar.gz
tar xzvf helm-v2.9.1-linux-amd64.tar.gz
cd linux-amd64
sudo mv helm /usr/local/bin/
################
#initialise helm 
sudo helm init
#create helm role based access control configuration
sudo kubectl create -f rbac-config.yaml
#helm initialise  tiller account
sudo helm init --service-account tiller --upgrade
```

3. Deploy the sample Go app to Kubernetes
```
sudo helm install -n go-k8s ./go-k8s
```

4. Verify application has been deployed and running, check for Name that begins with `go-k8s-`
```
sudo kubectl get pods --all-namespaces 
```
