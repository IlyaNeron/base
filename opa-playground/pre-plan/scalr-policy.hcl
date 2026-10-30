version = "v1"

policy "run_source" {
  enabled           = true
  enforcement_level = "soft-mandatory"
}

policy "workspace_naming" {
  enabled           = true
  enforcement_level = "hard-mandatory"
}
