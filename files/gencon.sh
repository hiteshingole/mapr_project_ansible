#!/usr/bin/env bash
cldb_list=$(echo `cat /tmp/controlnodes.txt`|sed 's/\ /,/g')
zoo_list=$(echo `cat /tmp/controlnodes.txt`|sed 's/\ /,/g')
echo /opt/mapr/server/configure.sh -C $cldb_list -Z $zoo_list -N new_cluster -secure  > /tmp/configure_command.sh
chmod 777 /tmp/configure_command.sh
echo /opt/mapr/server/configure.sh -C $cldb_list -Z $zoo_list -N new_cluster -secure  -genkeys > /tmp/configure_command_gen.sh
chmod 777 /tmp/configure_command_gen.sh
