# Local VM Quick Start

This is a Quick Start example to run Fermyon in a VM locally.

It utilizes the [fermyonvm](https://github.com/fermyon/vm) CLI to create a VM
using [Lima VM](https://github.com/lima-vm/lima) and then installs and
configures all of the components necessary for running the platform.

Note: this is intended solely for evaluation and/or demo scenarios and *not*
for production.

# Prerequisites

- [Lima VM](https://github.com/lima-vm/lima#installation)
- [fermyonvm CLI](https://github.com/fermyon/vm/releases)

# How to Deploy

Once the `limactl` and `fermyonvm` binaries are installed per the prerequisites
above, be sure they are added to your `PATH`. You can then run and manage an
instance of the Fermyon platform via `fermyonvm`.

The following command will create a new instance of the Fermyon platform VM:

```console
fermyonvm up
```

Once the command finishes, you can check the status of the platform via:

```console
fermyonvm status
```

A full list of `fermyonvm` commands and further info can be seen at the
project's [README](https://github.com/fermyon/vm/blob/main/README.md).

# Deploying to Fermyon

To deploy to the Fermyon platform, first source the pertinent environment
variables (such as `HIPPO_URL` and `BINDLE_URL`) into your shell via:

```console
$(fermyonvm env)
```

To log in to the Hippo dashboard, navigate your browser to Hippo (e.g. `open $HIPPO_URL`). The pre-configured username is admin and the password can be found in the `HIPPO_PASSWORD` environment variable in your shell session.

```console
echo $HIPPO_PASSWORD
```

Now you are ready to deploy your first application on Fermyon. Follow the
[guide to get started](../deploy.md).

# Tearing down

You can shut down the VM via:

```console
fermyonvm down
```

Or delete it entirely via:

```console
fermyonvm delete
```
