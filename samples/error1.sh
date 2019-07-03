#!/usr/bin/env bash
curl -v -X PUT "http://mockserver.lightningdev.com/mockserver/expectation" -d '{
    "httpRequest": {
        "path": "/some/path"
    },
    "httpError": {
        "dropConnection": true,
        "responseBytes": "eQqmdjEEoaXnCvcK6lOAIZeU+Pn+womxmg=="
    }
}'