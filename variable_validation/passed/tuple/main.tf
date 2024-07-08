variable "magic_animal_tuple" {
  type    = tuple([string, string, string])
  default = ["Usual Centaur", "Big Earth", "Non-Archery-Dry-check-on-222staging"]

  validation {
    condition     = can(regex("^(Usual Centaur|Big Earth|Non-Archery-Dry-check-on-222staging)$", var.magic_animal_tuple))
    error_message = "Should be failed!!!!!!Invalid fruit selected, only allowed fruits are: 'lemon', 'apple', 'mango', 'banana', 'cherry'. Default 'apple',Invalid fruit selected, only allowed fruits are: 'lemon', 'apple', 'mango', 'banana', 'cherry'. Default 'apple'"
  }
  }
