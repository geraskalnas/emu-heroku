#!/usr/bin/env bash

source /app/saved_env.sh

#echo "Current mc address is: ${MC_SERVER_IP:-$(${NGROK_GET_IP_SCRIPT_NAME})}"

read -sp 'Enter passphrase to control: ' pp
if [ $pp != $PASSPHRASE ]
then
  exit
fi

echo
echo 'Access granted.'
bash
