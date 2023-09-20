module "oob_domains" {
  source = "../../modules/oob-domains"

  site_name = "app1.example.com"
  oob_domains = [
    "*oastify.com*",
    "*interact.sh*",
    "*interact.com*",
    "*oast.fun*",
    "*oast.site*",
    "*oast.me*",
    "*oast.live*",
    "*oast.online*",
    "*oast.pro*",
    "*r87.me*",
    "*xss.ht*",
    "*bxss.me*",
    "*bxss.in*",
    "*ptst.io*",
    "*xss.report*",
    "*canarytokens.com*"
  ]
}
