#!/usr/bin/env bash
curl -v -X PUT "https://mockserver.lightningdev.com/mockserver/clear?type=log"
echo " == Refresh dashboard to see clean output == "