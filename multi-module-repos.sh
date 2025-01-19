#!/bin/bash

# See https://golang.org/cmd/go/#hdr-Legacy_GOPATH_

bash add-redirects-etc.sh "citools" "/citools" "citools"
bash add-redirects-etc.sh "go.webapi" "/webapi" "webapi"
bash add-redirects-etc.sh "go.webapps" "/webapps" "webapps"
bash add-redirects-etc.sh "glean" "/glean" "glean"
bash add-redirects-etc.sh "go.gotools" "/go" "go"
