# Bazel in Docker

## Installation

This repository doesn't have a specific required location.

I put it in `~/envs/bazel`.

## Usage

Build the image wherever:

```bash
make docker-build
```

Then execute it:

  * Either by copy-pasting the command
  * Make on another folder: `make -C ~/envs/bazel docker-bash` (note: see ## Installation)

