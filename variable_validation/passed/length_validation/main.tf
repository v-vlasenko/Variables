/*resource "random_pet" "pet" {
 prefix = var.prefix
 separator = "."
 length = 5
 }
variable "prefix" {
  type        = string
  description = "What fruit to pick?"
  default = "lemon"

validation {
    condition     = length(var.prefix) <= 3
    error_message = "Err: prefix is too long."
  }
   validation {
    condition     = can(regex("^(lemon|apple|mango|banana|cherry)$", var.prefix))
    error_message = "Invalid fruit selected, only allowed fruits are: 'lemon', 'apple', 'mango', 'banana', 'cherry'. Default 'apple',Invalid fruit selected, only allowed fruits are: 'lemon', 'apple', 'mango', 'banana', 'cherry'. Default 'apple'"
  }
}*/

resource "random_password" "password" {
  count = 1
  length           = var.long
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}
variable "long" {
  type        = number
  description = "What length?"
  default = 5

validation {
    condition     = length(var.long) <= 3
    error_message = "Err: prefix is too long."
  }
}
