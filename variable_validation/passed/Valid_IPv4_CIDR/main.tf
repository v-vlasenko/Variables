variable "string_like_valid_ipv4_cidr" {
  type    = string
  default = "	192.168.100.255/16"

  validation {
    condition     = can(cidrhost(var.string_like_valid_ipv4_cidr, 32))
    error_message = "Must be valid IPv4 CIDR."
  }
}
