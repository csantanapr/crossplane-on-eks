#tfsec:ignore:*
module "crossplane" {
  source  = "../../../bootstrap/terraform"

  region = "us-west-2"
  name = "crossplane-source"
  cluster_version = "1.25"
  addons = {
    enable_argocd = false
    enable_crossplane = false
    enable_metrics_server = false
    enable_kube_prometheus_stack = false
    enable_velero = true
  }
  velero_bucket = "arn:aws:s3:::origin-s3-bucket-carrlos-crossplane"

}
output "configure_kubectl" {
  description = "Configure kubectl: make sure you're logged in with the correct AWS profile and run the following command to update your kubeconfig"
  value       = module.crossplane.configure_kubectl
}
output "velero_s3_backup_location" {
  description = "S3 backup location"
  value       = module.crossplane.velero_s3_backup_location
}
