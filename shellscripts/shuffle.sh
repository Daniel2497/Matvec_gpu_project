#!/bin/bash
touch shuffleresults
for ((config=1; config<=3;config++))
	do
	echo "Cachekonfiguration" $config>>shuffleresults
	for (( sx=64; sx<=64; sx*=2 )) #Ausführung für i=1,2,...,16
    		do
    		echo "sx=" $sx ", sy=16">>shuffleresults
    		for ((i=1;i<=16;i*=2))
    			do
    			echo "i="$i >> shuffleresults
    			./shuffle $sx 16 $i $config | grep -i [C] >>shuffleresults
    			echo >> shuffleresults
    		done
    		echo >> shuffleresults
	done
done
