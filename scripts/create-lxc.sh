#!/bin/bash

# create-lxc.sh — by banditctl
# Usage: ./create-lxc.sh <CTID> <Hostname> <Template> <Storage> <DiskSize> <Memory> <Password>

CTID=$1
HOSTNAME=$2
TEMPLATE=$3
STORAGE=$4
DISK=$5
MEMORY=$6
PASSWORD=$7

pct create $CTID $TEMPLATE \
  -hostname $HOSTNAME \
  -storage $STORAGE \
  -rootfs ${STORAGE}:${DISK} \
  -memory $MEMORY \
  -password $PASSWORD \
  -net0 name=eth0,bridge=vmbr0,ip=dhcp \
  -start 1

echo "✅ LXC container $HOSTNAME ($CTID) created and started."
