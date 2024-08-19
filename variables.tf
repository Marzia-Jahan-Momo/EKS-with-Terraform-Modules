variable "aws_region" {
    default = "ap-southeast-1"  
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "kubernetes_version" {
    default = 1.29
}

variable "aliases_use_name_prefix" {
  description = "Whether to use a prefix for KMS aliases"
  type        = bool
  default     = true
}
