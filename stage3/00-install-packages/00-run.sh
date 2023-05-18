#!/bin/bash -e

on_chroot <<EOF
  echo "i2c-dev" >> /etc/modules
EOF
