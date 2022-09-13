# Fermyon Installer

Fermyon is a platform to host [Spin](https://spin.fermyon.dev) applications
and other compatible WebAssembly workloads.

The resources in this repository are intended to provide users with different
ways to deploy ("install") Fermyon in their preferred environment.

## The Fermyon Stack

Fermyon runs on [Nomad](https://nomadproject.io), so deployment scenarios
will first configure and install this software, in tandem with
[Consul](https://consul.io).

Afterwards, the components comprising Fermyon are deployed in the
form of Nomad jobs, including a [Bindle](https://github.com/deislabs/bindle)
server, [Traefik](https://docs.traefik.io) as the reverse proxy/load balancer
and [Hippo](https://github.com/deislabs/hippo), the web UI for managing
Spin-based applications.

# Installers

## Local
---

Looking to install Fermyon on your local machine? You have a few options:

1. To run the platform in a VM, follow the [vm](./vm/README.md) guide to get
  started.

1. To run the platform directly on your machine after installing all of the
  required components, follow the [local](./local/README.md) guide.

## AWS
---

The [AWS Quick-start](./aws/README.md) is a great option to go if you'd like
to run Fermyon in a separate environment.

This installer utilizes [Terraform](https://terraform.io) to deploy a
lightweight, working example of Fermyon on [AWS](https://aws.amazon.com/),
using only a minimal array of resources needed to run the services.

You'll be able to interact with publicly-accessible Bindle and Hippo services
within 5 minutes of invoking `terraform apply`. From there, you can start
deploying your applications.

## Azure
---

The [Azure Quick-start](./azure/README.md) is a great option to go if you'd like
to run Fermyon in a separate environment.

This installer utilizes [Terraform](https://terraform.io) to deploy a
lightweight, working example of Fermyon on [Azure](https://azure.microsoft.com/),
using only a minimal array of resources needed to run the services.

You'll be able to interact with publicly-accessible Bindle and Hippo services
within 5 minutes of invoking `terraform apply`. From there, you can start
deploying your applications.

## GCP
---

The [GCP Quick-start](./gcp/README.md) is a great option to go if you'd like
to run Fermyon in a separate environment.

This installer utilizes [Terraform](https://terraform.io) to deploy a
lightweight, working example of Fermyon on [GCP](https://cloud.google.com/gcp/),
using only a minimal array of resources needed to run the services.

You'll be able to interact with publicly-accessible Bindle and Hippo services
within 5 minutes of invoking `terraform apply -var='project_id=<project_id>'`. From there, you can start
deploying your applications.

## DigitalOcean
---

The [DigitalOcean Quick-start](./digitalocean/README.md) is a great option to go if you'd like
to run Fermyon in a separate environment.

This installer utilizes [Terraform](https://terraform.io) to deploy a
lightweight, working example of Fermyon on [DigitalOcean](https://www.digitalocean.com/),
using only a minimal array of resources needed to run the services.

You'll be able to interact with publicly-accessible Bindle and Hippo services
within 5 minutes of invoking `terraform apply`. From there, you can start
deploying your applications.

# Deploying to Fermyon

After installing Fermyon in your preferred environment, you are ready to deploy
your first application.

Follow the [deploy guide](deploy.md) to get started.
