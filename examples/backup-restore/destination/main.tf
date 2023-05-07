#tfsec:ignore:*
module "crossplane" {
  source  = "../../../bootstrap/terraform"

  region = "us-east-1"
  name = "crossplane-destination"
  cluster_version = "1.26"
  addons = {
    enable_argocd = false
    enable_crossplane = false
    enable_velero = true
  }
  velero_bucket = "arn:aws:s3:::replica-s3-bucket-carrlos-crossplane"

}














output "configure_kubectl" {
  description = "Configure kubectl: make sure you're logged in with the correct AWS profile and run the following command to update your kubeconfig"
  value       = module.crossplane.configure_kubectl
}
output "velero_s3_backup_location" {
  description = "S3 backup location"
  value       = module.crossplane.velero_s3_backup_location
}
