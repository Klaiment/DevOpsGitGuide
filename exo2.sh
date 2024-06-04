#!/bin/bash

# Déplace "linuxman" vers "tux" dans le répertoire "mascottes"
mv "personnages/super heros/hommes/sans cap/linuxman" "personnages/mascottes/tux"

# Renomme le répertoire "super heros" en "comics"
mv "personnages/super heros" "personnages/comics"

# Écrit dans le fichier "batman"
echo "Bruce Wayne hides behind this character" > personnages/comics/hommes/cape/batman
echo "he lives in Gotham" >> personnages/comics/hommes/cape/batman

# Écrit dans le fichier "daredevil"
echo "Homer Simpson hides behind this character" > personnages/comics/hommes/sans\ cap/daredevil
# Remplace le contenu de "daredevil"
echo "daredevil is a blind comic character" > personnages/comics/hommes/sans\ cap/daredevil

# Copie le contenu des fichiers "batman" et "daredevil" dans "mixdarbat"
cat personnages/comics/hommes/cape/batman personnages/comics/hommes/sans\ cap/daredevil > personnages/mascottes/mixdarbat

# Switch to root mode
sudo su

# Créé un utilisateur nommé "fanboy"
useradd fanboy

# Copie le répertoire "personnages" dans /home/fanboy
cp -r personnages /home/fanboy

# Change l'utilisateur et le groupe du répertoire copié
chown -R fanboy:fanboy /home/fanboy/personnages

# Crée un lien symbolique "persofanboy" pointant vers /home/fanboy/personnages
ln -s /home/fanboy/personnages /home/fanboy/persofanboy

# Remplace "yourname" par votre nom d'utilisateur
USERNAME=$(whoami)

# Crée un lien symbolique "perso_$USERNAME" pointant vers /home/$USERNAME/personnages
ln -s /home/$USERNAME/personnages /home/$USERNAME/perso_$USERNAME

# Sauvegarde la structure complète de /home/fanboy/personnages dans un fichier "14.txt"
ls -R /home/fanboy/personnages > 14.txt

# Supprime les lignes contenant le mot "total" et sauvegarde dans "15.txt"
grep -v "total" 14.txt > 15.txt

# Sauvegarde les 250 dernières lignes de l'historique sans les commandes "cd" dans un fichier "myhistory"
history | grep -v "cd" | tail -n 250 > myhistory

echo "Opérations terminées avec succès."
