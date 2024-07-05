resource "random_password" "password" {
  count = var.pass_count
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}
variable "pass_count"{
type = number
default = 5
}

variable "angle" {
  validation {
    condition     = sin(var.pass_count) > 5
    error_message = "nope"
  }
}
