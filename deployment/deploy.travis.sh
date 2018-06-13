#!/usr/bin/env bash

if [ "${TRAVIS_BRANCH}" = "fix/faster-build" ]; then
  npm run deploy:backend -- $TRAVIS_BRANCH || travis_terminate 1
  ./deployment/deploy-frontend.sh || travis_terminate 1
fi

echo "DONE DEPLOYING"
