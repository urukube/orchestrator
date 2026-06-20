region        = "us-east-1"
env           = "dev"
bu_id         = "BU12345"
app_id        = "APP67890"
friendly_name = "orchestrator"

# Network
vpc_cidr = "10.0.0.0/16"
azs      = ["us-east-1a", "us-east-1c"]

vpc_endpoints = {
  s3          = true
  ssm         = true
  ssmmessages = true
  ec2messages = true
  kms         = true
  ecr_api     = true
  ecr_dkr     = true
  sts         = true
  ec2         = true
  logs        = true
}

min_size          = 1
max_size          = 3
desired_size      = 3
max_pods_per_node = 50

cluster_kubernetes_version = "1.36"

is_eks_managed_node_group = false
# EKS API Server Endpoint Access
cluster_endpoint_access_type         = "public"
cluster_endpoint_public_access_cidrs = ["101.0.63.102/32"]
