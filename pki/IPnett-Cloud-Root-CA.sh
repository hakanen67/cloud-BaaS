#!/bin/sh

# replace PASSWORD string with some random secret (that you know)
PASSWORD=MoghooNaeFie5sipi9aegheixiNg5che

KDB=/opt/tivoli/tsm/client/ba/bin/dsmcert.kdb
GSK8CAPICMD=gsk8capicmd_64

$GSK8CAPICMD -keydb -create -db "$KDB" -pw "$PASSWORD" -stash

$GSK8CAPICMD -cert -add -db "$KDB" -format ascii -stashed \
	-label "IPnett BaaS Root CA" \
	-file IPnett-Cloud-Root-CA.pem \

$GSK8CAPICMD -cert -list -db "$KDB" -stashed
