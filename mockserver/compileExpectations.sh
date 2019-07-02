#!/usr/bin/env bash
docker run --rm -v ${PWD}/mockserver/expectations:/workdir realguess/jq sh -c "jq -s '. = [. | add] | .[]'  /workdir/*.json" > mockserver/initializerJson.json
