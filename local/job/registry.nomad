variable "datacenters" {
  type = string
  default = "dc1"
  description = <<EOT
    A comma separated list of strings which determines which datacenters a service should be deployed to; e.g. 'dc1,dc2'.
    String will be coerced to a list at evaluation.
  EOT
}

job "registry" {
  datacenters = split(",", var.datacenters)
  type        = "service"

  group "registry" {
    count = 1

    network {
      port "http" { to = 5000 }
    }

    service {
      name = "registry"
      port = "http"

      tags = [
        "traefik.enable=true",
        "traefik.http.routers.registry.rule=Host(`registry.local.fermyon.link`)",
      ]
    }

    task "registry" {
      driver = "docker"
      config {
        image = "distribution/distribution:edge"
        ports = ["http"]
      }
    }
  }
}
