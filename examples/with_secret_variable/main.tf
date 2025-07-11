module "variable" {

  source = "../.."

  project_id        = var.project_id
  group_description = "Example Variable Group with a secret variable"
  group_name        = "example-group-with-secret"
  variables = {
    example = {
      name         = "example"
      value        = null
      is_secret    = true
      secret_value = "example"
    }
  }
}