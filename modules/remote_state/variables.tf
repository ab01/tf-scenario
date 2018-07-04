variable "region" {
  default     = "us-east-1"
  description = "The AWS region."
}

variable "prefix" {
  default     = "akilimawazoinfo"
  description = "The name of our org, i.e. examplecom."
}

variable "environment" {
  default     = "development"
  description = "The name of our environment, i.e. development."
}
