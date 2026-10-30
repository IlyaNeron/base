package terraform

allowed_sources := {"vcs", "ui", "cli", "drift-detection"}

deny[reason] {
	not allowed_sources[input.tfrun.source]
	reason := sprintf("Runs started from %q skip review; use VCS, the UI or the CLI", [input.tfrun.source])
}
