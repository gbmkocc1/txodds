variable "region" {
  default = "eu-west-2"
}

variable "cluster_role_arn" {
  description = "IAM role for EKS cluster"
}

variable "subnet_ids" {
  type = list(string)
  description = "Subnet IDs for EKS"
}
