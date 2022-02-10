#!/usr/bin/env bash


export REPOSITORY="${GITHUB_REPOSITORY}"
export COMMIT_ID="${GITHUB_SHA}"
export BRANCH="${GITHUB_REF_NAME}"
export SOURCE="GITHUB"
export AUTHOR="${GITHUB_ACTOR}"
export COMMIT_MESSAGE="${{ github.event.head_commit.message }}"

entrypoint.sh