SETUP PROMETHEUS & GRAFANA MONITORING ON KUBERNETES USING HELM OPERATOR IN GOOGLE CLOUD PLATFORM(GCP) 
DEPLOY PROMETHEUS STACK USING HELM

1) Set up Google cloud platform
   Create a project
   Enable GKE and Cloud Build APIs
   Activate Cloud Shell
   Set the default compute/zone
   gcloud config set compute/zone us-east1-d
   
2) Create a Kubernetes cluster
  gcloud container clusters create prometheus \
  --machine-type n1-standard-1 --num-nodes 2 \
  --scopes "https://www.googleapis.com/auth/source.read_write,cloud-platform" \
  --cluster-version 1.15
  
  Check if cluster is running
		gcloud container clusters list
    kubectl cluster-info
    
3)  Install Helm
    wget https://get.helm.sh/helm-v3.2.1-linux-amd64.tar.gz
    tar zxfv helm-v3.2.1-linux-amd64.tar.gz
    cp  linux-amd64/helm .
    ./helm version
    
4) Add yourself as a cluster admin
    kubectl create clusterrolebinding cluster-admin-binding --clusterrole=cluster-admin \
    --user=$(gcloud config get-value account)
    
5) Install Prometheus, Grafana stack using Helm Charts
   helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
   helm repo add stable https://kubernetes-charts.storage.googleapis.com/
   helm repo update 
   helm install prometheus prometheus-community/kube-prometheus-stack
   helm install alert prometheus-community/alertmanager
   
6) Check the newly created components
   kubectl get all
   
7) Check the port number and username for Grafana
   kubectl logs prometheus-grafana-766f7bcbc7-lc5c8 -c grafana
   default username: admin
   default password: prom-operator
   port no: 3000
   
8) Expose the port to view Grafana monitoring tool 
   kubectl port-forward deployment/prometheus-grafana 3000
   web preview -> port no 3000
   
9) Expose the port to view Prometheus monitoring tool 
   kubectl port-forward prometheus-kube-prometheus-operator-6f68b65bf-cclwh 9000
   web preview -> port no 9000
   
   
   
