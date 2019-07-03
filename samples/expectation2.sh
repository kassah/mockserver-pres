#!/usr/bin/env bash
curl -v -X PUT "https://mockserver.lightningdev.com/mockserver/expectation" -d '{
  "httpRequest" : {
    "method" : "GET",
    "path" : "/simple",
    "headers" : {
      "Accept" : [ "application/json" ],
      "Accept-Encoding" : [ "gzip, deflate, br" ]
    }
  },
  "httpResponse" : {
    "body" : "call this multiple times."
  }
}'