# Example backup and restore Crossplane use cases


# Setup

## Deploy EKS Clusters

### Deploy Source Cluster on us-west-2 region with 1.25
```shell
terraform -chdir=${PWD}/../../bootstrap/terraform init
terraform -chdir=${PWD}/../../bootstrap/terraform plan -var-file=${PWD}/source.tfvars
terraform -chdir=${PWD}/../../bootstrap/terraform apply -var-file=${PWD}/source.tfvars -auto-approve
```
