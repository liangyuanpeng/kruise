#!/bin/bash

set -o pipefail

go install sigs.k8s.io/logtools/logcheck@main
logcheck -check-structured ./pkg/util/...
logcheck -check-structured ./pkg/controller/...
logcheck -check-structured ./pkg/control/...


