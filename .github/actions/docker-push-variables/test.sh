#!/bin/bash -x
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
# Non-pushing PR
GITHUB_OUTPUT=/dev/stdout \
    GITHUB_REF=ref \
    GITHUB_SHA=sha \
    IMAGE_NAME=ghcr.io/alhazmy13/server,beryju/authentik \
    GITHUB_REPOSITORY=alhazmy13/authentik \
    python $SCRIPT_DIR/push_vars.py

# Pushing PR/main
GITHUB_OUTPUT=/dev/stdout \
    GITHUB_REF=ref \
    GITHUB_SHA=sha \
    IMAGE_NAME=ghcr.io/alhazmy13/server,beryju/authentik \
    GITHUB_REPOSITORY=alhazmy13/authentik \
    DOCKER_USERNAME=foo \
    python $SCRIPT_DIR/push_vars.py
