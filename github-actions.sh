#!/usr/bin/env bash


export REPOSITORY="${GITHUB_REPOSITORY}"
export COMMIT_ID="${GITHUB_SHA}"
export BRANCH="${GITHUB_REF_NAME}"
export SOURCE="GITHUB"
export AUTHOR="${GITHUB_ACTOR}"
export COMMIT_MESSAGE="${{ github.event.head_commit.message }}"

export COMMIT_MESSAGE="${{ github.event.head_commit.message }}"

if [ -d "${STEP_NAME}" ]; then
  echo "Step name defined: ${STEP_NAME}"
  step_outcome_var="steps.${STEP_NAME}.outcome"
  echo "Var ${step_outcome_var}: ${!step_outcome_var}"

  if [[ "${!step_outcome_var}" == "success" ]]; then
      export STATUS="SUCCEEDED"
  else
      export STATUS="FAILED"
  fi
fi

entrypoint.sh