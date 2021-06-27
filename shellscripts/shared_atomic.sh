#!/bin/bash
touch sharedatomicresults
for ((config=1; config<=3;config++))
	do
	echo "Cachekonfiguration" $config>>sharedatomicresults
	for (( sx=4; sx<=64; sx*=2 )) #Ausführung für i=1,2,...,16
    		do
    		echo "sx=" $sx ", sy=16">>sharedatomicresults
    		for ((i=1;i<=16;i*=2))
    			do
    			echo "i="$i >> sharedatomicresults
    			./onlyshared $sx 16 $i $config | grep -i [C] >>sharedatomicresults
    			echo >> sharedatomicresults
    		done
    		echo >> sharedatomicresults
	done
done
