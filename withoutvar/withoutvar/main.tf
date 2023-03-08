resource "null_resource" "test" {
  count = var.quantity
  triggers = {
    trigger = timestamp()
  }
}
variable "quantity" {
  default = 1
}
