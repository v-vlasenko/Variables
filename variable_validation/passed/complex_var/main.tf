#In this example, the magic_animals_list variable is defined as a list of strings representing magic animals. The resulting list will be ["unicorn", "dragon", "phoenix", "griffin"].
variable "magic_animals_list" {
  type    = list(string)
  default = ["unicorn", "dragon", "phoenix", "griffin", "thestral", "dog"]
}
#In this example, the magic_animals variable is a list of objects. Each object represents a magic animal and contains attributes such as name, power, element, and description. The default value provides a list of four magic animals with their respective attributes.
variable "magic_animals" {
  type = list(object({
    name       = string
    power      = string
    element    = string
    description = string
  }))
  default = [
    {
      name        = "unicorn"
      power       = "sparkle"
      element     = "light"
      description = "A mystical creature with a single horn on its forehead."
    },
    {
      name        = "dragon"
      power       = "fire"
      element     = "fire"
      description = "A powerful creature with the ability to breathe fire."
    },
    {
      name        = "phoenix"
      power       = "rebirth"
      element     = "fire"
      description = "A legendary bird that is reborn from its own ashes."
    },
    {
      name        = "griffin"
      power       = "majesty"
      element     = "air"
      description = "A majestic creature with the body of a lion and the head of an eagle."
    }

  validation {
    condition = contains(["cat", "pet"], var.magic_animals_list[0].name)
    error_message = "Invalid object, name can be unicorn(set by default configuration for first object in the template)."
  }
  ]
}



#In this example, the magic_animals_set variable is defined as a set of strings representing magic animals. The resulting set will be ["unicorn", "dragon", "phoenix", "griffin"]
variable "magic_animals_set" {
  type    = set(string)
  sensitive = true
  default = ["unicorn№", "dragon", "phoenix", "griffin", "black cat"]

  validation {
    condition     = can(regex("^w+$", var.magic_animals_set))
    # Not allowed due to the use of a variable:
    # error_message = "Invalid value [${var.prefix}]. The prefix value can only contain letters and numbers."
    error_message = "The prefix value can only contain letters and numbers."
  }
}



variable "mymap" {
  type = map(string)

  validation {
    condition = alltrue(
       [for obj in keys(var.mymap) : can(regex("^key.*",obj))]
    )
    error_message = "Each map key should include key string."
  }

  default = {"key1" = "val1"}
  #default = {"key1" = "val1", "key2" = "val2"}
  #default = {"okey1" = "val1", "key2" = "val2"}
  #default = {"ok1" = "val1", "key2" = "val2"}
}


variable "only_one_optional_key" {
    type = object({
        name = optional(string)
        cidrs = optional(list(string))
        netmask = optional(number)
    })

    default = {
        cidr = "10.0.0.0/16"
        name = "test"
    }

    validation {
        error_message = "Can only specify either \"cidrs\", or \"netmask\"."
        condition = length(setintersection(keys(var.only_one_optional_key), ["cidrs", "netmask"])) == 1
    }
}


#In this example, the magic_animal_tuple variable is defined as a tuple that contains three magical animal attributes: name, element, and power. The resulting tuple will be ["Centaur", "Earth", "Archery"].
variable "magic_animal_tuple" {
  type    = tuple([string, string, string])
  default = ["Usual Centaur", "Big Earth", "Non-Archery-Dry-check-on-222staging"]

  validation {
    condition     = !can(regex("^(Usual Centaur|Big Earth|Non-Archery-Dry-check-on-222staging)$", var.magic_animal_tuple))
    error_message = "Should be failed!!!!!!Invalid fruit selected, only allowed fruits are: 'lemon', 'apple', 'mango', 'banana', 'cherry'. Default 'apple',Invalid fruit selected, only allowed fruits are: 'lemon', 'apple', 'mango', 'banana', 'cherry'. Default 'apple'"
  }
  }


  variable "string_may_not_contain" {
  type = string
  default = "test"

  validation {
    error_message = "Value cannot contain a \"/\"."
    condition = !can(regex("/", var.string_may_not_contain))
  }
}


variable "num_in_range" {
  type        = number
  default     = 1

  validation {
    condition     = var.num_in_range >= 1 && var.num_in_range <= 16 && floor(var.num_in_range) == var.num_in_range
    error_message = "Accepted values: 1-16."
  }
}

  



/*output "tuple_example" {
  value = var.magic_animal_tuple
}
output "object_example" {
  value = var.magic_animal_object
}
output "module_new_map_example" {
  value = var.magic_animals_map
}
output "set_example" {
  value = var.magic_animals_set
sensitive = true
}
output "list_example" {
  value = var.magic_animals_list
}
output "list_example2" {
  value = var.magic_animals_list
}
output "magic_animals" {
  value = var.magic_animals
}*/
