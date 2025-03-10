#!/bin/bash -e

install -v -d "${ROOTFS_DIR}/etc/wpa_supplicant"
install -v -m 600 files/wpa_supplicant.conf "${ROOTFS_DIR}/etc/wpa_supplicant/"
install -v -d -m 0700 --owner 1000 --group 1000 "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.ssh/"
install -v -m 0600 --owner 1000 --group 1000 files/authorized_keys "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.ssh/authorized_keys"
install -v -d "${ROOTFS_DIR}/etc/mosquitto/conf.d"
install -v -m 644 files/mosquitto-dev.conf "${ROOTFS_DIR}/etc/mosquitto/conf.d/"
