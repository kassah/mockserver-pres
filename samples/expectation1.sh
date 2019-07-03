#!/usr/bin/env bash
curl -v -X PUT "https://mockserver.lightningdev.com/mockserver/expectation" -d '{
  "httpRequest" : {
    "method" : "GET",
    "path" : "/some/path",
    "headers" : {
      "Accept" : [ "application/json" ],
      "Accept-Encoding" : [ "gzip, deflate, br" ]
    }
  },
  "httpResponse" : {
    "body" : "some_response_body"
  }
}'