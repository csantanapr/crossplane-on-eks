# Example backup and restore Crossplane use cases


# Setup

## Deploy EKS Clusters

### Deploy Source Cluster on us-west-2 region with EKS 1.25
```shell
cd destination
```
```shell
terraform init
terraform plan
terraform apply -auto-approve
```


Setup Source terminal
```shell
export KUBECONFIG=~/eks-source
aws eks update-kubeconfig --name crossplane-source --alias crossplane-source --region us-west-2 --kubeconfig ${KUBECONFIG}
```

### Deploy Destination Cluster on us-east-1 region with EKS 1.26
```shell
cd destination
```
```shell
terraform init
terraform plan
terraform apply -auto-approve
```

Setup Destination terminal
```shell
export KUBECONFIG=~/eks-destination
aws eks update-kubeconfig --name crossplane-destination --alias crossplane-destination --region us-east-1 --kubeconfig ${KUBECONFIG}
```
