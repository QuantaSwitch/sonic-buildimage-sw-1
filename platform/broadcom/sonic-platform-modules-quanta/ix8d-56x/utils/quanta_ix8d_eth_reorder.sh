#!/bin/bash

pr_info()
{
  echo "IX8D eth reorder: $1"
}

#==================================

# Change eth2 name to eth0
pr_info "Starting the service port name change to eth0 ... "

ip link set eth0 down &>/dev/null
ip link set eth1 down &>/dev/null
ip link set eth2 down &>/dev/null

ip link set eth0 name ethtmp
ip link set eth2 name eth0
ip link set eth1 name eth2
ip link set ethtmp name eth1 
ip link set eth1 up
ip link set eth2 up
ip link set eth0 up

pr_info "Finished service port name change to eth0 !!!"