variable "nullable" {
  type    = string
  default = "Used default value"
}

output "nullable" {
  value = coalesce(var.nullable, "[null]")
}

variable "non_nullable" {
  type     = string
  default  = "Used default value"
  nullable = false
}

output "non_nullable" {
  value = coalesce(var.non_nullable, "[null]")
}
