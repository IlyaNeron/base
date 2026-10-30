package terraform

deny[reason] {
	not regex.match(`^[a-z0-9]+(-[a-z0-9]+)*$`, input.tfrun.workspace.name)
	reason := sprintf("Workspace name %q must be lowercase words joined by dashes", [input.tfrun.workspace.name])
}
