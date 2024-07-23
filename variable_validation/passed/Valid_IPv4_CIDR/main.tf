variable "string_like_valid_ipv4_cidr" {
  type    = string
  default = "10.12.127.0/20"

  validation {
    condition     = cidrhost(var.string_like_valid_ipv4_cidr, 16) == "10.12.112.16"
    error_message = "Must be valid IPv4 CIDR."
  }
}
