#!/usr/bin/env bash

function guess_files {
    local true_ans=$(ls -l | grep "^-" | wc -l)
    local guess

    echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"
    while true; do
        read -p "Entrez votre estimation : " guess
        if [[ ! $guess =~ ^[0-9]+$ ]]; then
            echo "Veuillez entrer un nombre valide."
        elif (( guess < true_ans )); then
            echo "Votre estimation est trop basse."
        elif (( guess > true_ans )); then
            echo "Votre estimation est trop haute."
        else
            echo "Félicitations, vous avez trouvé le bon nombre !"
            break
        fi
    done
}

guess_files
