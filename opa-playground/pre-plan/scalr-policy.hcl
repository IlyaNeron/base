version = "v1"

policy "run_source" {
  enabled           = true
  enforcement_level = "advisory"
}

policy "workspace_naming" {
  enabled           = true
  enforcement_level = "hard-mandatory"
}
