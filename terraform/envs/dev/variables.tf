variable "aws_region" {
  description = "The AWS region to deploy resources in."
  type        = string
}

variable "project_name" {
  description = "The name of the project."
  type        = string
}

variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
}

variable "cluster_version" {
  description = "The Kubernetes version for the EKS cluster."
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "azs" {
  description = "A list of availability zones to deploy resources in."
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "A list of CIDR blocks for the public subnets."
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "A list of CIDR blocks for the private subnets."
  type        = list(string)
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
