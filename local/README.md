# Local Quick Start

This is an 'Installer Lite' refactor to run Spin apps on Nomad locally.

It doesn't run Hippo, the admin/UI dashboard, as it doesn't yet support
[apps as OCI images](https://github.com/deislabs/hippo/issues/1653), which
is the default mechanism Spin v2+ uses to distribute apps.

Instead, apps are deployed directly to Nomad. A local registry runs as
a Nomad job.

# Prerequisites

- [Nomad](https://www.nomadproject.io/docs/install)
- [Consul](https://www.consul.io/docs/install)
- [Spin](https://github.com/fermyon/spin)

# How to Deploy

```console
./start.sh
```

# Deploying Spin apps to Nomad

You can use the [Spin Nomad plugin](https://github.com/vdice/spin-nomad-plugin) to deploy.

See the [Installation instructions](https://github.com/vdice/spin-nomad-plugin?tab=readme-ov-file#installing-the-latest-plugin)
to get started.
