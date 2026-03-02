#!/bin/bash

echo "Ajout de fichiers .gitkeep dans tous les dossiers..."

# Trouve tous les dossiers et ajoute .gitkeep
find . -type d -not -path "*/\.*" | while read dossier; do
    if [ "$dossier" != "." ]; then
        touch "$dossier/.gitkeep"
        echo "✅ .gitkeep ajouté dans $dossier"
    fi
done

echo "Terminé ! Maintenant tous les dossiers apparaîtront sur GitHub"