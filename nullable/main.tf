variable "nullable" {
  type    = string
  default = "Used default value"
}

output "nullable" {
  value = {key: null}
}

variable "non_nullable" {
  type     = string
  default  = "Used default value"
  nullable = false
}

output "non_nullable" {
  value = var.non_nullable
}
