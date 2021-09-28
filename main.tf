resource "dnsimple_record" "root" {
  domain = "roadmapper.cloud"
  name   = ""
  type   = "ALIAS"
  value  = local.netlify_hostname
}

resource "dnsimple_record" "www" {
  domain = "roadmapper.cloud"
  name   = "www"
  type   = "CNAME"
  value  = local.netlify_hostname
}

