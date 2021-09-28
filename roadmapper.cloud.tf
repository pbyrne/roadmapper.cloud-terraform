resource "netlify_site" "roadmapper-cloud" {
  custom_domain = "roadmapper.cloud"
  name          = "roadmapper-cloud"

  repo {
    repo_branch   = "master"
    command       = var.command
    deploy_key_id = var.deploy_key.id
    dir           = var.output
    provider      = "github"
    repo_path     = var.repo
  }
}



