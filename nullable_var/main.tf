/*variable "nullable" {
  type     = string
  default = null
}*/

variable "nullable" {
  type = number
  default = null
}

resource "null_resource" "name" {
  triggers = {
    trigger = var.nullable
  }
}
