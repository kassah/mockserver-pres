#!/usr/bin/env bash
curl -v -X PUT "https://mockserver.lightningdev.com/mockserver/verify" -d '{
    "httpRequest": {
        "path": "/simple"
    },
    "times": {
        "atLeast": 2
    }
}'