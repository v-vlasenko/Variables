variable "magic_animals_set" {
  type    = set(string)
  #sensitive = true
  default = ["aaaaa", "dragon", "phoenix", "griffin", "black cat"]

  validation {
    condition     = regex("^a", var.magic_animals_set[0]) == "aaaaa"
    # Not allowed due to the use of a variable:
    # error_message = "Invalid value [${var.prefix}]. The prefix value can only contain letters and numbers."
    error_message = "The prefix value can only contain letters and numbers."
  }
}
