 variable "string_may_not_contain" {
  type = string
  default = "test"

  validation {
    error_message = "Value cannot contain a "/"."
    condition = can(regex("/", var.string_may_not_contain))
  }
}
