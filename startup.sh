#!/usr/bin/env bash
mkdir -p tmp/screen
export SCREENDIR=/app/tmp/screen
#export SCREENDIR=\$HOME/.apt/var/run/screen

export -p >> /app/saved_env.sh
shellinaboxd --disable-peer-check -t --port=${SHELLINABOX_PORT:-$PORT} -s /:$(whoami):dyno:/app:${SHELLINABOX_SERVICE_COMMAND:-'login.sh'} $SHELLINABOX_OPTS
