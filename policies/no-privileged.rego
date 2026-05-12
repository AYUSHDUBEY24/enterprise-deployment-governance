package kubernetes

deny contains msg if {
  input.spec.template.spec.containers[_].securityContext.privileged == true
  msg := "Privileged containers are not allowed"
}