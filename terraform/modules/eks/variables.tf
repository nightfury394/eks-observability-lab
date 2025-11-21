variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
}

variable "cluster_version" {
  description = "The Kubernetes version for the EKS cluster."
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC where the cluster will be deployed."
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the EKS cluster and node group."
  type        = list(string)
}

variable "cluster_role_arn" {
  description = "The ARN of the IAM role for the EKS cluster."
  type        = string
}

variable "node_group_role_arn" {
  description = "The ARN of the IAM role for the EKS node group."
  type        = string
}

variable "node_group_instance_types" {
  description = "A list of instance types for the EKS node group."
  type        = list(string)
}

variable "node_group_desired_size" {
  description = "The desired number of nodes in the node group."
  type        = number
}

variable "node_group_min_size" {
  description = "The minimum number of nodes in the node group."
  type        = number
}

variable "node_group_max_size" {
  description = "The maximum number of nodes in the node group."
  type        = number
}
