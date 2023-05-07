# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "name" {
  description = "EKS Cluster Name and the VPC name"
  type        = string
  default     = "crossplane-blueprints"
}

variable "cluster_version" {
  type        = string
  description = "Kubernetes Version"
  default     = "1.25"
}

variable "addons" {
  type        = any
  description = "EKS addons"
  default     = {
    enable_metrics_server        = false
    enable_kube_prometheus_stack = false
    enable_argocd                = true
    enable_crossplane            = true
    enable_velero                = true
  }
}

variable "velero_bucket" {
  description = "provide existing location"
  type        = string
  default     = null
}
