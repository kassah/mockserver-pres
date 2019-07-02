#!/usr/bin/env bash
wget -O ./mockserver/CertificateAuthorityCertificate.pem https://raw.githubusercontent.com/jamesdbloom/mockserver/master/mockserver-core/src/main/resources/org/mockserver/socket/CertificateAuthorityCertificate.pem
if [ -f "./mockserver/cacert.pem" ]; then
    curl -o ./mockserver/cacert.pem --time-cond ./mockserver/cacert.pem https://curl.haxx.se/ca/cacert.pem
else
    curl -o ./mockserver/cacert.pem https://curl.haxx.se/ca/cacert.pem
fi

cat ./mockserver/cacert.pem ./mockserver/CertificateAuthorityCertificate.pem > ./mockserver/curl-ca.crt