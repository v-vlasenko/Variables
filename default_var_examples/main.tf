# example-1-default-value
variable "var_name1" {
  type = string
  default  = "default-value"
}
resource "null_resource" "name" {
  triggers = {
    trigger = var.var_name1
  }
}
# example-2-empty string
variable "var_name2" {
  type = string
  default  = ""
}
resource "null_resource" "name" {
  triggers = {
    trigger = var.var_name2
  }
}
# example-3-string with spaces (best to avoid)
variable "var_name3" {
  type = string
  default  = "   "
}
resource "null_resource" "name" {
  triggers = {
    trigger = var.var_name3
  }
}
# example-4-null value 
variable "var_name4" {
 type = string
 default = null
}
resource "null_resource" "name" {
  triggers = {
    trigger = var.var_name4
  }
}

#example-5 - no default value
variable "var_name5" {
  type = string
}
resource "null_resource" "name" {
  triggers = {
    trigger = var.var_name5
  }
}
