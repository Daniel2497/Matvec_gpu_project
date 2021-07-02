## Ausarbeitung
Die Ausarbeitung findet sich in Ausarbeitung/GPU_projekt.pdf

## Cuda-Script/cpp Script
Die Cuda-Scripte finden sich im Ordner Cuda-Scripte

Der Code des Cuda Programm, welche nur mit SharedMemory Reduktion arbeitet findet sich in der Datei:
onlyshared.cu

Der Code des Cuda Programm, welche mit SharedMemory Reduktion inerhalb eines Threadblocks und AtomicAdd über die Threadblöcke verteilt findet sich in der Datei:
shared_with_atomic_time.cu

Der Code des Cuda Programm, welches nur mit AtomicAdd zu Reduktion arbeitet findet sich in der Datei:
only_atomic_time_messure.cu

Der Code des Cuda Programm, welches mit Intragrids arbeitet findet sich in der Datei:
intragrid.cu

Der Code des Cuda Programm, welches mit shuffle Operationen arbeitet findet sich in der Datei:
shuffle.cu

Das cpp Script zur CPU implementierung finden sich im Ordner CPU_test unter dem Name cpucall.cpp

## Makefiles
Das Makefile, welches für die GPU01 und GPU02 Server der Fakultät verwendet werden kann findet sich in dem Ordner shellscripte unter dem Namen make.sh

Das Makefile welches auf dem Ara Cluster ausgeführt werden kann findet sich in dem Ordner shellscripte unter dem Name makeAra.sh

Das Makefile zur CPU Implemetierung findet sich im Ordner CPU_test unter dem Name makecpu.sh

## Executables 
Nach Ausführung des make files im Ordner shellscripte finden sich folgende executables:

Die executable des Cuda Programm, welche nur mit SharedMemory Reduktion arbeitet findet sich in der Datei:
onlyshared

Die executable des Cuda Programm, welche mit SharedMemory Reduktion inerhalb eines Threadblocks und AtomicAdd über die Threadblöcke verteilt findet sich in der Datei:
sharedatomic

Die executable des Cuda Programm, welches nur mit AtomicAdd zu Reduktion arbeitet findet sich in der Datei:
onlyatomic

Die executable des Cuda Programm, welches mit Intragrids arbeitet findet sich in der Datei:
intragrid

Die executable des Cuda Programm, welches mit shuffle Operationen arbeitet findet sich in der Datei:
shuffle

Nach Ausführung des makefiles im Ordner CPU_test findet sich die executable zur CPU-Implemetierung im Ordner CPU_test unter dem Namen cpucal
## Ausführung der Executable

Für exe in {shuffle,intragrid,onlyatomic,sharedatomic,onlyshared}

./exe bewirkt die Ausführung mit Blockgröße sx=32, sy=32, size=1024, Standard Cache Konfiguration, keine Ausgabe des Ergebnisses

./exe a bewirkt die Ausführung mit Blockgröße sx=a, sy=32, size=1024, Standard Cache Konfiguration, keine Ausgabe des Ergebnisses

./exe a b bewirkt die Ausführung mit Blockgröße sx=a, sy=b, size=1024, Standard Cache Konfiguration, keine Ausgabe des Ergebnisses

./exe a b c bewirkt die Ausführung mit Blockgröße sx=a, sy=b, size=1024*c, Standard Cache Konfiguration, keine Ausgabe des Ergebnisses

./exe a b c 1 bewirkt die Ausführung mit Blockgröße sx=a, sy=b, size=1024*c, L1 prefered, keine Ausgabe des Ergebnisses

./exe a b c 2 bewirkt die Ausführung mit Blockgröße sx=a, sy=b, size=1024*c, shared memory prefered, keine Ausgabe des Ergebnisses

./exe a b c 3 e bewirkt die Ausführung mit Blockgröße sx=a, sy=b, size=1024*c, none prefered, Ausgabe des Ergebnisses

Die Ausführung der CPU Implementation ./cpucal besitzt die selbe Logik. Argument vier hat hier jedoch keine Wirkung.
## Erstellung der Messergebnisse

Es wurde Sheelscripte geschrieben um die executables mit verschiedenen Parametern auszuführen und die Messergenisse in eine Datei zu schreiben.
Diese Sheelscripte zu den jeweiligen executables "exe,exe in {shuffle,intragrid,onlyatomic,sharedatomic,onlyshared}" finden sich in den Ornder shellscripte unter dem Namen exe.sh

Das Sheelcript zur Erstellung der Messergebnisse für die CPU Implemetierung findet sich im Ordner CPU_test unter dem Namen docpu.sh
## Ausführung auf dem Ara
Die jeweiligen Sbatch Scripte von "exe.sh,exe in {shuffle,intragrid,onlyatomic,sharedatomic,onlyshared}" zur Ausführung auf dem Ara Cluster finden sich in dem Ordner shellscripte unter dem Namen sbatch_exe.sh

## Speicherort der Messergebnisse
Die Messergebnisse wurden nach Ausführung der Scripte Umbenannt von file in GPUfile, mit GPU in {GTX780, RTX2070super, P100}, je nachdem auf welcher GPU sie erzeugt wurden. Sie finden sich in dem Ordner Messergenisse wieder.

Die Messergebnisse des Cuda Programm, welche nur mit SharedMemory Reduktion arbeitet findet sich in der Datei: 
GPUallsharedresults

Die Messergebnisse des Cuda Programm, welche mit SharedMemory Reduktion inerhalb eines Threadblocks und AtomicAdd über die Threadblöcke verteilt findet sich in der Datei:
GPUsharedatomicresults

Die Messergebnisse des Cuda Programm, welches nur mit AtomicAdd zu Reduktion arbeitet findet sich in der Datei:
GPUonlyatomicresults

Die Messergebnisse des Cuda Programm, welches mit Intragrids arbeitet findet sich in der Datei:
GPUintradgridresults

Die Messergebnisse des Cuda Programm, welches mit shuffle Operationen arbeitet findet sich in der Datei:
GPUshuffleresults

Die Messergebnisse für die CPU Implementierung findet sich im Ordner CPU_test unter dem Namen cpuresults.

## Logik innerhalb der Messergebnisse
Cachekoniguration: 	1->L1 prefered
			2->sharedmemory prefered
			3->nonprefered
sx: sx steht für die Threadblockgröße in x Dimension bei GPU Ausführung
sy: sy steht für die Threadblockgröße in x Dimension bei GPU Ausführung
i: i steht für die Problemgröße 1024*i
Computation time: Rechenzeit in ms,


