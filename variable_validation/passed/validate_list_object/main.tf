variable "rules" {
  type = list(object({
    name = string
    access = string
  }))
default = [
    {
      name = "unicorn"
      access = "Deny"
    }
]

  validation {
    condition = contains(["Allow", "Deny"], var.rules.access)
    error_message = "Invalid access, can be either Allow or Deny."
  }
}
