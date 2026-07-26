variable "rgnames" {
    type = map(object({
      name = string
      location = string
    }))
}