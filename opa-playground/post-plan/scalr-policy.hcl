version = "v1"

policy "no_replacements" {
  enabled           = true
  enforcement_level = "hard-mandatory"
}

policy "change_budget" {
  enabled           = true
  enforcement_level = "soft-mandatory"
}

policy "owner_tag" {
  enabled           = true
  enforcement_level = "advisory"
}

policy "no_destroy_runs" {
  enabled           = true
  enforcement_level = "hard-mandatory"
}

policy "random_id_length" {
  enabled           = false
  enforcement_level = "advisory"
}
