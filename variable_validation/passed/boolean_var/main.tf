variable "magic_animals_boolean" {
  type    = bool
  default = false

validation {
    condition = alltrue([
     var.magic_animals_boolean
    ])
    error_message = "<helpful error message>"
  }
}
