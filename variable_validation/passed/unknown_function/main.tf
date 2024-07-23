resource "random_password" "password" {
  count = var.pass_count
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

variable "pass_count" {
type = number
default = 5

  validation {
    condition     = sin(var.pass_count) > 0.1
    error_message = "bla bla bla"
  }
}
