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

# To find the specific details from  logs like only Errors from large log files.
curl https://raw.githubusercontent.com/elastic/examples/master/Common%20Data%20Formats/apache_logs/apache_logs | grep error | awk -F " " '{print}
 $1'
# To download and find the specific details from any url like logs 

wget https://raw.githubusercontent.com/elastic/examples/master/Common%20Data%20Formats/apache_logs/apache_logs | grep error
# To find the specific file location inside node
sudo find /  -name node
# To change the Root user
sudo su - #su: switch user and -:dash refers to root user Note: like root user we can switch to any user like sudo su <userName>.
# Concept of Trap 
# used for trapping the signal

#trap "rm -rf *" SIGINT
