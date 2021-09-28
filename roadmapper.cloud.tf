terraform {
  required_providers {
    dnsimple = {
      source = "dnsimple/dnsimple"
    }
  }
}

locals {
  netlify_hostname = "roadmapper-cloud.netlify.app"
}

resource "dnsimple_record" "root" {
  domain = "roadmapper.cloud"
  name   = ""
  type   = "ALIAS"
  value  = locals.netlify_hostname
}

resource "dnsimple_record" "www" {
  domain = "roadmapper.cloud"
  name   = "www"
  type   = "CNAME"
  value  = locals.netlify_hostname
}
