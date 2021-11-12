#!/bin/bash

set -e -x -u

./hack/build.sh

export KAPPCTRL_BINARY_PATH="$PWD/kapp"

./hack/test.sh
./hack/test-e2e.sh

echo ALL SUCCESS
