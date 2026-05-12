package kubernetes

deny[msg] {
  input.spec.template.spec.containers[_].image == "nginx:latest"
  msg := "Latest tag is not allowed"
}

deny[msg] {
  input.spec.template.spec.containers[_].securityContext.privileged == true
  msg := "Privileged containers are not allowed"
}