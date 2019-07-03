#!/usr/bin/env bash
curl -v -X PUT "https://mockserver.lightningdev.com/mockserver/expectation" -d '{
  "httpRequest" : {
    "method" : "GET",
    "path" : "/some/path"
  },
  "httpResponse" : {
    "body" : "some_response_body"
  }
}'