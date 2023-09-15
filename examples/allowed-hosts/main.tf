module "allowed_hosts" {
  source = "../../modules/allowed-hosts"

  site_name     = "app1.example.com"
  allowed_hosts = ["app1.example.com", "www.app1.example.com"]
}
