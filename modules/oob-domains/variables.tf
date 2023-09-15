variable "site_name" {
  type        = string
  description = "Name of the site"
}

variable "oob_domains" {
  type        = list(string)
  description = "List of out-of-band domains"
}
