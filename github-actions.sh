#!/usr/bin/env bash


export REPOSITORY="${GITHUB_REPOSITORY}"
export COMMIT_ID="${GITHUB_SHA}"
export BRANCH="${GITHUB_REF_NAME}"
export SOURCE="GITHUB"
export AUTHOR="${GITHUB_ACTOR}"
export COMMIT_MESSAGE="${{ github.event.head_commit.message }}"

if [ -d "${STEP_STATUS}" ]; then
  echo "Step status defined: ${STEP_STATUS}"

  if [[ "${STEP_STATUS}" == "success" ]]; then
      export STATUS="SUCCEEDED"
  else
      export STATUS="FAILED"
  fi
fi

entrypoint.sh