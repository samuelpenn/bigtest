#!/bin/bash

base=$1
num=$2

i=0
while [ $i -lt $num ]
do
	echo $(( $num - $i)) 
	a=$(( $i % 10))
	b=$(( $i % 100))
	c=$(( $i % 1000))
	d=$(( $i / 10000))

	mkdir -p $base/$d/$c/$b/$a
	lorem -w 2  > $base/$d/$c/$b/$a/$i.txt

	i=$(( $i + 1 ))

done

