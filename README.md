# puppet-boundary

[![Build Status](https://travis-ci.org/fvoges/puppet-boundary.svg)](https://travis-ci.org/fvoges/puppet-boundary)

> **WARNING:** This code is untested and incomplete. You shouldn't be using this, yet.

## Table of Contents

- [Table of Contents](#table-of-contents)
- [Description](#description)
- [Setup](#setup)
  - [What puppet-boundary affects](#what-puppet-boundary-affects)
  - [Setup Requirements](#setup-requirements)
  - [Beginning with boundary](#beginning-with-boundary)
- [Usage](#usage)
- [Reference](#reference)
- [Limitations](#limitations)
- [Development](#development)

## Description

This Puppet module manages the CLI version [HashiCorp Boundary](https://boundaryproject.io).

## Setup

### What puppet-boundary affects

It installs the official packages for Boundary. For the time being, that's all it does. The plan is to later implement the Boundary Worker side of things. I'm not sure if I'm going to implement the functionality to configure a Boundary Controller.

If you don't know what Boundary Workers and Boundary Controllers are, check [this tutorial](https://learn.hashicorp.com/tutorials/boundary/getting-started-intro) for an introduction.

### Setup Requirements

This module depends on [Homebrew](https://brew.sh/) and [thekevjames-homebrew](https://forge.puppet.com/thekevjames-homebrew) to install boundary on macOS

### Beginning with boundary

The very basic steps needed for a user to get the module up and running. This
can include setup steps, if necessary, or it can be an example of the most basic
use of the module.

## Usage

```puppet
include boundary
```

## Reference

See [REFERENCE.md](https://github.com/fvoges/puppet-boundary/REFERENCE.md)

## Limitations

Currently under development. Initially, the module will support Debian/RHEL Linux families, and macOS.

On RHEL/Debian family distros, the module will setup HashiCorp's public repo. If you're already managing them somewhere else in your node configuration, you might end up with a duplicate resource declaration error. Just ensure that the parameter `manage_repo` is set to `false` in that case.

## Development

Pull requests are welcome (please include unit tests for your changes).
