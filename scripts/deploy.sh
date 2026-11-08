#!/bin/bash
# Script de déploiement : met à jour le site publié par nginx

# Aller dans le dossier du site, et s'arrêter s'il n'existe pas
cd ~/serveur/site-equipe || { echo "Dossier introuvable"; exit 1; }

# Récupérer les dernières modifications depuis GitHub
git pull

# Copier les fichiers du site dans le dossier servi par nginx
sudo cp index.html style.css /var/www/html/

# Afficher un message de fin
echo "Déploiement terminé !"