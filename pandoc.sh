#!/usr/bin/env bash

# On définit le template une fois pour toutes
TEMPLATE="easy_template.html"

# Boucle sur tous les fichiers .md du dossier
for file in *.md; do
    # On récupère le nom du fichier sans l'extension (ex: index)
    filename="${file%.*}"
    
    echo "Traitement de $file..."
    
    # On lance pandoc
    # Note : j'ajoute --mathjax pour que vos équations s'affichent partout
    pandoc "$file" -f markdown -t html -o "$filename.html" \
           --template="$TEMPLATE" \
           --toc \
           --mathjax \
           --metadata title="Samuel Delepoulle - Research"
done

echo "Terminé ! Vos fichiers HTML sont prêts."