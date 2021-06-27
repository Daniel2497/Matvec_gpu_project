#!/bin/bash
touch onlyatomicresults
for ((config=1; config<=3;config++))
	do
	echo "Cachekonfiguration" $config>>onlyatomicresults
	for (( sx=4; sx<=64; sx*=2 )) #Ausführung für i=1,2,...,16
    		do
    		echo "sx=" $sx ", sy=16">>onlyatomicresults
    		for ((i=1;i<=16;i*=2))
    			do
    			echo "i="$i >> onlyatomicresults
    			./onlyatomic $sx 16 $i $config | grep -i [C] >>onlyatomicresults
    			echo >> onlyatomicresults
    		done
    		echo >> onlyatomicresults
	done
done
