#!/usr/bin/env bash
set -e

export REPOSITORY="${GITHUB_REPOSITORY}"
export COMMIT_ID="${GITHUB_SHA}"
export BRANCH="${GITHUB_REF_NAME}"
export SOURCE="GITHUB"
export AUTHOR="${GITHUB_ACTOR}"

if [[ "${STEP_STATUS}" == "success" ]]; then
    export STATUS="SUCCEEDED"
else
    export STATUS="FAILED"
fi

entrypoint.sh