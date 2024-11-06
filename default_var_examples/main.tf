# example-1-default-value
variable "var_name1" {
  type = string
  default  = "default-value"
}
# example-2-empty string
variable "var_name2" {
  type = string
  default  = ""
}
# example-3-string with spaces (best to avoid)
variable "var_name3" {
  type = string
  default  = "   "
}
# example-4-null value 
variable "var_name4" {
 type = string
 default = null
}

#example-5 - no default value
variable "var_name5" {
  type = string
}
