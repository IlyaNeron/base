package terraform

deny["Workspace has no owner tag"] {
	not input.tfrun.workspace.tags.owner
}
