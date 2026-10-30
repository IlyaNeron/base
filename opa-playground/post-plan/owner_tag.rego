package terraform

import rego.v1

deny contains "Workspace has no owner tag" if {
	not input.tfrun.workspace.tags.owner
}
