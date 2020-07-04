# Docker helpers

## Description

This project provides simple helper for running docker interactive terminals.
Helper script automatically binds the directory where it is run.
Any additional folders can be provided as arguments.

The user in the docker sessions will have the same uid as the one who called the command.

## Setup

Make sure you have `make`, `python` and `docker` installed in your system.
To install the helpers simply run:

```
make install
```

This will build docker image and add entries to your `.bashrc` file.


## Usage

Once installed, docker session can be started with the following command:

```
debian_docker
```

This will bind the current directory in the docker session.
Any additional directories can be provided as arguments e.g:

```
debian_docker /tmp /var/tftp
```
