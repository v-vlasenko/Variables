/*variable "nullable" {
  type     = string
  default = null
}*/

variable "nullable" {
  type = string
  default = "string"
}

resource "null_resource" "name" {
  triggers = {
    trigger = var.nullable
  }
}
