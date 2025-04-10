#!/bin/sh

echo "✅ Starting tests..."

# Nginx démarre automatiquement avec l'image, testons la page
HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost)

if [ "$HTTP_STATUS" = "200" ]; then
  echo "✅ Test Passed: Homepage reachable"
  exit 0
else
  echo "❌ Test Failed: Got HTTP status $HTTP_STATUS"
  exit 1
fi
