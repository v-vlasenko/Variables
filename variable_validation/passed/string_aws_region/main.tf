variable "string_like_aws_region" {
  type = string
  default = "us-east-1"

  validation {
    condition     = can(regex("[a-z][a-z]-[a-z]+-[1-9]", var.string_like_aws_region))
    error_message = "Must be valid AWS Region names."
  }
}
