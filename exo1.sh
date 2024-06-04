#!/bin/bash

# Fonction pour créer un répertoire avec des permissions spécifiques
create_dir() {
    mkdir -p "$1"
    chmod "$2" "$1"
}

# Fonction pour créer un fichier avec des permissions spécifiques
create_file() {
    touch "$1"
    chmod "$2" "$1"
}

# Définition des permissions
dir_perm=755  # drwxr-xr-x
subdir_perm=775  # drwxrwxr-x
file_perm=644  # -rw-r--r--

# Création de la structure des répertoires et des fichiers
base_path="personnages"

# Création des répertoires principaux
create_dir "$base_path" $dir_perm

# Création des sous-répertoires et des fichiers
# mascottes
create_dir "$base_path/mascottes" $subdir_perm
create_file "$base_path/mascottes/beastie" $file_perm
create_file "$base_path/mascottes/bibendum" $file_perm
create_file "$base_path/mascottes/mario" $file_perm
create_file "$base_path/mascottes/sonic" $file_perm

# super heros / femmes / cape
create_dir "$base_path/super heros" $dir_perm
create_dir "$base_path/super heros/femmes" $dir_perm
create_dir "$base_path/super heros/femmes/cape" $subdir_perm
create_dir "$base_path/super heros/femmes/cape/batgirl" $subdir_perm
create_dir "$base_path/super heros/femmes/cape/wonderwoman" $subdir_perm

# super heros / femmes / sans cape
create_dir "$base_path/super heros/femmes/sans cape" $subdir_perm
create_dir "$base_path/super heros/femmes/sans cape/electra" $subdir_perm
create_dir "$base_path/super heros/femmes/sans cape/superwoman" $subdir_perm

# super heros / hommes / cape
create_dir "$base_path/super heros/hommes" $dir_perm
create_dir "$base_path/super heros/hommes/cape" $subdir_perm
create_file "$base_path/super heros/hommes/cape/batman" $file_perm
create_file "$base_path/super heros/hommes/cape/superman" $file_perm
create_file "$base_path/super heros/hommes/cape/thor" $file_perm

# super heros / hommes / sans cap
create_dir "$base_path/super heros/hommes/sans cap" $subdir_perm
create_file "$base_path/super heros/hommes/sans cap/antman" $file_perm
create_file "$base_path/super heros/hommes/sans cap/daredevil" $file_perm
create_file "$base_path/super heros/hommes/sans cap/linuxman" $file_perm
create_file "$base_path/super heros/hommes/sans cap/spiderman" $file_perm

echo "Structure des répertoires et des fichiers créée avec succès."
