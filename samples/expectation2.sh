#!/usr/bin/env bash
curl -v -X PUT "https://mockserver.lightningdev.com/mockserver/expectation" -d '{
  "httpRequest" : {
    "method" : "GET",
    "path" : "/simple"
  },
  "httpResponse" : {
    "body" : "call this multiple times."
  }
}'