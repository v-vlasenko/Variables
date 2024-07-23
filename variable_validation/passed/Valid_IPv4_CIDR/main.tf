variable "string_like_valid_ipv4_cidr" {
  type    = string
  default = "10.0.0.0/16"

  validation {
    condition     = can(cidrhost(var.string_like_valid_ipv4_cidr, 0))
    error_message = "Must be valid IPv4 CIDR."
  }
}
