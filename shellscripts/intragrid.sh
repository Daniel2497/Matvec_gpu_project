#!/bin/bash
touch intragridresults
for ((config=1; config<=3;config++))
	do
	echo "Cachekonfiguration" $config>>intragridresults
	for (( sx=4; sx<=64; sx*=2 )) #Ausführung für i=1,2,...,16
    		do
    		echo "sx=" $sx ", sy=16">>intragridresults
    		for ((i=1;i<=16;i*=2))
    			do
    			echo "i="$i >> intragridresults
    			./intragrid $sx 16 $i $config | grep -i [C] >>intragridresults
    			echo >> intragridresults
    		done
    		echo >> intragridresults
	done
done
