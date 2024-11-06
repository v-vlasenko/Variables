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
    time= timestamp()
  }
}

/*resource "null_resource" "name" {
  triggers = {
    time = var.timestamp
  }
}*/

variable "timestamp" {
  type = string
  default = timestamp()
}
