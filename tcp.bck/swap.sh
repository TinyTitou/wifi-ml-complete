#!/bin/bash

for i in *.pcap.data
do

pos=`echo $i | cut -d "_" -f 1`
tcp=`echo $i | cut -d "_" -f 2`
dist=`echo $i | cut -d "_" -f 3`
pkt=`echo $i | cut -d "_" -f 4`
fin=`echo $i | cut -d "_" -f 5`

mv $i  $pos\_$dist\_$pkt\_$fin


done
