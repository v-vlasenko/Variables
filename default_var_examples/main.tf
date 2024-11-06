# example-1-default-value
variable "var_name" {
  type = string
  default  = "default-value"
}
# example-2-empty string
variable "var_name" {
  type = string
  default  = ""
}
# example-3-string with spaces (best to avoid)
variable "var_name" {
  type = string
  default  = "   "
}
# example-4-null value 
variable "var_name {
 type = string
 default = null
}

#example-5 - no default value
variable "var_name" {
  type = string
}
