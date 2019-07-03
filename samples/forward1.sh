#!/usr/bin/env bash
curl -v -X PUT "https://mockserver.lightningdev.com/mockserver/expectation" -d "
{
  'httpRequest': {
    'headers': {
      'host': [
        'api.ipify.org'
      ]
    }
  },
  'httpForward': {
    'host': 'api.ipify.org',
    'port': 443,
    'scheme': 'HTTPS'
  }
}
"