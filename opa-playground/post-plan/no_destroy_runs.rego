package terraform

import rego.v1

deny contains "Destroy runs need a change ticket" if {
	input.tfrun.is_destroy
}
