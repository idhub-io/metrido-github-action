#!/usr/bin/env bash


export REPOSITORY="${GITHUB_REPOSITORY}"
export COMMIT_ID="${GITHUB_SHA}"
export BRANCH="${GITHUB_REF_NAME}"
export SOURCE="GITHUB"
export AUTHOR="${GITHUB_ACTOR}"


entrypoint.sh