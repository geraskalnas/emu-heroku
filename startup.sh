#!/usr/bin/env bash
export -p >> $HOME/saved_env.sh
shellinaboxd --disable-peer-check -t --port=\${SHELLINABOX_PORT:-\$PORT} -s /:\$(whoami):dyno:/app:\${SHELLINABOX_SERVICE_COMMAND:-'bash'} \$SHELLINABOX_OPTS
