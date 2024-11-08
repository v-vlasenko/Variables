variable "prefix" {
  type        = string

validation {
    condition = var.prefix == ""
    error_message = "variable could be saved without value"
}
}

variable "prefix2" {
  type        = string
validation {
    condition = length(var.prefix) == 0
    error_message = "variable could be saved without value"
}
}
