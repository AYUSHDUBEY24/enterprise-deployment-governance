package kubernetes

deny[msg] {
  input.spec.template.spec.containers[_].image == "nginx:latest"
  msg := "Latest tag is not allowed"
}