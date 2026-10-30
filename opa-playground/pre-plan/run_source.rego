package terraform

import rego.v1

allowed_sources := {"vcs", "ui", "cli", "drift-detection"}

deny contains reason if {
	not allowed_sources[input.tfrun.source]
	reason := sprintf("Runs started from %q skip review; use VCS, the UI or the CLI", [input.tfrun.source])
}
