#!/bin/sh

echo "✅ Starting tests..."

# Démarrer Nginx en arrière-plan
nginx &

# Attendre que Nginx soit prêt
sleep 2

# Tester la page d’accueil
HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost)

if [ "$HTTP_STATUS" = "200" ]; then
  echo "✅ Test Passed: Homepage reachable"
  exit 0
else
  echo "❌ Test Failed: Got HTTP status $HTTP_STATUS"
  exit 1
fi
