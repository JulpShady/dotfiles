#!/bin/bash

# Mettre fin aux instances de Polybar en cours d'ex√cution
killall -q polybar

# Attendre que les processus soit termin√s
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Lancer Polybar en utilisant l'emplacement de conf par d√faut ~/.conf/polybar/conf
polybar example &

echo "Polybar lanc√..."
