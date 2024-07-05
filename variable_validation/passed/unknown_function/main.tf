resource "random_pet" "pet" {
 prefix = var.angle
 separator = "."
 length = 1
 }

variable "angle" {
  validation {
    condition     = sin(var.angle) > 0.7
    error_message = "nope"
  }
}
