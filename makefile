.PHONY: all clean

all: README.md

README.md: guessinggame.sh
	echo "# Projet: Jeu de devinettes" > $@
	echo "\n**Date et heure de la dernière exécution de make:** $$(date '+%Y-%m-%d %H:%M:%S')" >> $@
	echo "\n**Nombre de lignes de code dans guessinggame.sh:** $$(wc -l < guessinggame.sh)" >> $@

clean:
	rm -f README.md
