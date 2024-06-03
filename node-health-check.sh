#!/bin/bash

###################Script Details###############################
#
#Author: "Prashant Kumar Singh
#Date: 03-06-24
#Description: This Script helps us to give the node health details
#Version: V1
################End of Script Details############################


#########OPTION1##################
#echo "Print the Disk Space:"
#df -h #Disk Space
#echo "Print the Memory Usages"
#free -g #Memory usages
#echo "Print the CPU Usages"
#nproc #CPU usages
##########OPTION1##################



####################OPTION2#####################
set -x
set -e 
set -o 

#testing.......Error

df -h
free
nproc
#top
###############OPTION2###################################

# To check the process details


#ps -ef - To find the specific process from the vm/node
ps -ef | grep node-health-check # use of pipe which takes o/p from 1st cmd and frwd to 2nd cmd
# To find the PID - ProcessId for the specific process
ps -ef | grep node-health-check | awk -F " " '{print $2}'
