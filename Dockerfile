# Utilise l'image Nginx officielle
FROM nginx:alpine

# Installe curl pour les tests
RUN apk add --no-cache curl

# Copie la page HTML personnalisée depuis le dossier webapp
COPY web-content/index.html /usr/share/nginx/html/index.html

# Copie le script de test
COPY run-tests.sh /run-tests.sh
RUN chmod +x /run-tests.sh

# Expose le port 80
EXPOSE 80
