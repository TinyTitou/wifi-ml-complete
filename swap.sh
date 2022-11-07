#!/bin/bash

cd $1

for i in *
do

etage=`echo $i | cut -d "_" -f 1`
pos=`echo $i | cut -d "_" -f 2`
tcp=`echo $i | cut -d "_" -f 3`
dist=`echo $i | cut -d "_" -f 4`




fin=`echo $i | cut -d "_" -f 5`
run=`echo $fin | cut -d "." -f 1`
ext=`echo $fin | cut -d "." -f 2`
ext2=`echo $fin | cut -d "." -f 3`

#echo $i " => " $pos\_$dist\_$run.$ext.$ext2
mv $i $pos\_$dist\_$run.$ext.$ext2



done
