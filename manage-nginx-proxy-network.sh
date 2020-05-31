#!/bin/sh
case "$1" in
  remove) docker network remove nginx-proxy;;
  add) docker network create nginx-proxy;;
  ls) docker network ls;;
  *) cat << EOF
add     -- add docker nginx-proxy network
remove  -- remove docker nginx-proxy network
ls      -- List all created docker networks
EOF
esac
