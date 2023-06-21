variable "site_name" {
  type        = string
  description = "Name of the site"
}

variable "allowed_hosts" {
  type        = list(string)
  description = "List of allowed hosts"
}
