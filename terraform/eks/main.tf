provider "aws" {
  region = "eu-west-2"
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.0.0"

  cluster_name    = "flask-ip-cluster"
  cluster_version = "1.30"

  vpc_id     = "vpc-123456"      # Example value
  subnet_ids = ["subnet-123", "subnet-456"]

  manage_aws_auth = true

  eks_managed_node_groups = {
    default = {
      min_size     = 1
      max_size     = 3
      desired_size = 1
      instance_types = ["t3.medium"]
    }
  }
}
