#!/bin/bash

set -xe

terraform destroy -target="module.crossplane.module.eks_blueprints_crossplane_addons" -auto-approve
terraform destroy -target="module.crossplane.module.eks_blueprints_kubernetes_addons" -auto-approve
terraform destroy -auto-approve
