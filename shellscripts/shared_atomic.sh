#!/bin/bash
touch allsharedresults
for ((config=1; config<=3;config++))
	do
	echo "Cachekonfiguration" $config>>allsharedresults
	for (( sx=4; sx<=64; sx*=2 )) #Ausführung für i=1,2,...,16
    		do
    		echo "sx=" $sx ", sy=16">>allsharedresults
    		for ((i=1;i<=16;i*=2))
    			do
    			echo "i="$i >> allsharedresults
    			./onlyshared $sx 16 $i $config | grep -i [C] >>allsharedresults
    			echo >> allsharedresults
    		done
    		echo >> allsharedresults
	done
done
