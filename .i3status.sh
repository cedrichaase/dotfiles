#!/bin/bash

function append {
  line="$1 | $line"
}

i3status | while true; do
  read line

  if playing=$(mpc | head -1 | grep "-"); then
    append $playing
  fi

  if vpn_active=$(systemctl status vpn | grep -w active); then
    append "VPN up"
  else
    append "VPN down"
  fi

  echo $line
done
