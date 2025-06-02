# Utilise Nginx comme serveur web
FROM nginx:alpine

# Copie tous les fichiers du projet dans le dossier web de Nginx
COPY . /usr/share/nginx/html

# Expose le port 80
EXPOSE 80

# Lancer Nginx en mode "avant-plan"
CMD ["nginx", "-g", "daemon off;"]
