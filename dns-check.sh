#!/bin/bash

# Simple DNS checker script

if [ -z "$1" ]; then
  echo "Usage: $0 domain.com"
  exit 1
fi

DOMAIN=$1

echo "🔍 Checking DNS records for: $DOMAIN"
echo "------------------------------------"

echo "📌 A record:"
dig +short A $DOMAIN

echo -e "\n📌 MX record:"
dig +short MX $DOMAIN

echo -e "\n📌 NS record:"
dig +short NS $DOMAIN

echo -e "\n📌 TXT record:"
dig +short TXT $DOMAIN

echo -e "\n✅ SPF record:"
dig TXT $DOMAIN | grep spf

echo -e "\n✅ DKIM (selector: default):"
dig TXT default._domainkey.$DOMAIN | grep dkim

echo "------------------------------------"
