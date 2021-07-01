#!/bin/bash
touch cpuresults
for (( sx=4; sx<=64; sx*=2 )) #Ausführung für i=1,2,...,16
    		do
    		echo "sx=" $sx ", sy=16">>cpuresults
    		for ((i=1;i<=16;i*=2))
    			do
    			echo "i="$i >> cpuresults
    			./cpucal $sx 16 $i  | grep -i [C] >>cpuresults
    			echo >> cpuresults
    		done
    		echo >> cpuresults
	done