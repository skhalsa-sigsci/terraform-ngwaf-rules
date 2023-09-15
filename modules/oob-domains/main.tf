resource "sigsci_site_rule" "oob_domain" {
  site_short_name = var.site_name
  type            = "request"
  group_operator  = "all"
  requestlogging  = "sampled"
  enabled         = true
  reason          = "logs requests with known out-of-band domains"
  expiration      = ""

  conditions {
    field          = "signal"
    group_operator = "any"
    operator       = "exists"
    type           = "multival"
    conditions {
      field    = "paramvalue"
      operator = "inList"
      type     = "single"
      value    = sigsci_site_list.oob_domains.id
    }
  }

  actions {
    type   = "addSignal"
    signal = sigsci_site_signal_tag.oob_domain.id
  }

}

resource "sigsci_site_list" "oob_domains" {
  site_short_name = var.site_name
  name            = "out-of-band domains"
  type            = "wildcard"
  description     = "list of out-of-band domains"
  entries         = var.oob_domains
}

resource "sigsci_site_signal_tag" "oob_domain" {
  site_short_name = var.site_name
  name            = "oob domain"
  description     = "attacker controlled domain"
}