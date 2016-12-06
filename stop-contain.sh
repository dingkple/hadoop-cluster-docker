#!/bin/bash

# the default node number is 3
N=${1:-3}


# start hadoop master container
sudo docker stop hadoop-master
sudo docker rm -f hadoop-master &> /dev/null

# start hadoop slave container
i=1
while [ $i -lt $N ]
do
    sudo docker stop hadoop-slave$i &> /dev/null
	sudo docker rm -f hadoop-slave$i &> /dev/null
	i=$(( $i + 1 ))
done 

