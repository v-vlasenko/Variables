resource "random_shuffle" "my_shuffle" {
  input = var.fruit
  result_count = length(var.fruit)
}
variable "fruit" {
  type        = string
  description = "What fruit to pick?"
  default     = "apple"

  validation {
    condition     = can(regex("^(lemon|apple|mango|banana|cherry)$", var.fruit))
    error_message = "Invalid fruit selected, only allowed fruits are: 'lemon', 'apple', 'mango', 'banana', 'cherry'. Default 'apple'"
  }
}
