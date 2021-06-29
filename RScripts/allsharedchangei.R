##RTX2070super

allshared2070super<-read.table("../Data_for_R/RTX2070superallsharedresultsGFL",sep="\n")
allsharedgpu2070super<-allshared2070super$V1

#Cacheconfig1

Indsx4C1<-1:5+0
Indsx8C1<-1:5+5
Indsx16C1<-1:5+10
Indsx32C1<-1:5+15
Indsx64C1<-1:5+20

#Cacheconfig2

Indsx4C2<-1:5+25
Indsx8C2<-1:5+30
Indsx16C2<-1:5+35
Indsx32C2<-1:5+40
Indsx64C2<-1:5+45

#Cachconfig3
Indsx4C3<-1:5+50
Indsx8C3<-1:5+55
Indsx16C3<-1:5+60
Indsx32C3<-1:5+65
Indsx64C3<-1:5+70


plot(ylim=c(0,max(c(allsharedgpu2070super[Indsx4C1],allsharedgpu2070super[Indsx8C1],allsharedgpu2070super[Indsx16C1],
allsharedgpu2070super[Indsx32C1],allsharedgpu2070super[Indsx64C1]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="RTX2070super Sharedmemoryreduktion\n Performance mit Veränderung der Problemgröße \n  L1 prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(allsharedgpu2070super[Indsx4C1],allsharedgpu2070super[Indsx8C1],allsharedgpu2070super[Indsx16C1],
allsharedgpu2070super[Indsx32C1],allsharedgpu2070super[Indsx64C1]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=allsharedgpu2070super[Indsx4C1],x=1:5,col="red",pch=5)
points(y=allsharedgpu2070super[Indsx8C1],x=1:5,col="blue",pch=5)
points(y=allsharedgpu2070super[Indsx16C1],x=1:5,col="green",pch=5)
points(y=allsharedgpu2070super[Indsx32C1],x=1:5,col="orange",pch=5)
points(y=allsharedgpu2070super[Indsx64C1],x=1:5,col="magenta",pch=5)

lines(y=allsharedgpu2070super[Indsx4C1],x=1:5,col="red",pch=5)
lines(y=allsharedgpu2070super[Indsx8C1],x=1:5,col="blue",pch=5)
lines(y=allsharedgpu2070super[Indsx16C1],x=1:5,col="green",pch=5)
lines(y=allsharedgpu2070super[Indsx32C1],x=1:5,col="orange",pch=5)
lines(y=allsharedgpu2070super[Indsx64C1],x=1:5,col="magenta",pch=5)


#Cacheconfig 2
plot(ylim=c(0,max(c(allsharedgpu2070super[Indsx4C2],allsharedgpu2070super[Indsx8C2],allsharedgpu2070super[Indsx16C2],
allsharedgpu2070super[Indsx32C2],allsharedgpu2070super[Indsx64C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="RTX2070super Sharedmemoryreduktion\n Performance mit Veränderung der Problemgröße \n  Shared Memory Prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(allsharedgpu2070super[Indsx4C2],allsharedgpu2070super[Indsx8C2],allsharedgpu2070super[Indsx16C2],
allsharedgpu2070super[Indsx32C2],allsharedgpu2070super[Indsx64C2]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=allsharedgpu2070super[Indsx4C2],x=1:5,col="red",pch=5)
points(y=allsharedgpu2070super[Indsx8C2],x=1:5,col="blue",pch=5)
points(y=allsharedgpu2070super[Indsx16C2],x=1:5,col="green",pch=5)
points(y=allsharedgpu2070super[Indsx32C2],x=1:5,col="orange",pch=5)
points(y=allsharedgpu2070super[Indsx64C2],x=1:5,col="magenta",pch=5)

lines(y=allsharedgpu2070super[Indsx4C2],x=1:5,col="red",pch=5)
lines(y=allsharedgpu2070super[Indsx8C2],x=1:5,col="blue",pch=5)
lines(y=allsharedgpu2070super[Indsx16C2],x=1:5,col="green",pch=5)
lines(y=allsharedgpu2070super[Indsx32C2],x=1:5,col="orange",pch=5)
lines(y=allsharedgpu2070super[Indsx64C2],x=1:5,col="magenta",pch=5)

#Cacheconfig 3
plot(ylim=c(0,max(c(allsharedgpu2070super[Indsx4C3],allsharedgpu2070super[Indsx8C3],allsharedgpu2070super[Indsx16C3],
allsharedgpu2070super[Indsx32C3],allsharedgpu2070super[Indsx64C3]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="RTX2070super Sharedmemoryreduktion\n Performance mit Veränderung der Problemgröße \n  L1=shared Memory=32kB")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(allsharedgpu2070super[Indsx4C3],allsharedgpu2070super[Indsx8C3],allsharedgpu2070super[Indsx16C3],
allsharedgpu2070super[Indsx32C3],allsharedgpu2070super[Indsx64C3]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=allsharedgpu2070super[Indsx4C3],x=1:5,col="red",pch=5)
points(y=allsharedgpu2070super[Indsx8C3],x=1:5,col="blue",pch=5)
points(y=allsharedgpu2070super[Indsx16C3],x=1:5,col="green",pch=5)
points(y=allsharedgpu2070super[Indsx32C3],x=1:5,col="orange",pch=5)
points(y=allsharedgpu2070super[Indsx64C3],x=1:5,col="magenta",pch=5)

lines(y=allsharedgpu2070super[Indsx4C3],x=1:5,col="red",pch=5)
lines(y=allsharedgpu2070super[Indsx8C3],x=1:5,col="blue",pch=5)
lines(y=allsharedgpu2070super[Indsx16C3],x=1:5,col="green",pch=5)
lines(y=allsharedgpu2070super[Indsx32C3],x=1:5,col="orange",pch=5)
lines(y=allsharedgpu2070super[Indsx64C3],x=1:5,col="magenta",pch=5)

##GTX780

allshared780<-read.table("../Data_for_R/GTX780allsharedresultsGFL",sep="\n")
allsharedgpu780<-allshared780$V1

#Cacheconfig1

Indsx4C1<-1:5+0
Indsx8C1<-1:5+5
Indsx16C1<-1:5+10
Indsx32C1<-1:5+15
Indsx64C1<-1:5+20

#Cacheconfig2

Indsx4C2<-1:5+25
Indsx8C2<-1:5+30
Indsx16C2<-1:5+35
Indsx32C2<-1:5+40
Indsx64C2<-1:5+45

#Cachconfig3
Indsx4C3<-1:5+50
Indsx8C3<-1:5+55
Indsx16C3<-1:5+60
Indsx32C3<-1:5+65
Indsx64C3<-1:5+70


plot(ylim=c(0,max(c(allsharedgpu780[Indsx4C1],allsharedgpu780[Indsx8C1],allsharedgpu780[Indsx16C1],
allsharedgpu780[Indsx32C1],allsharedgpu780[Indsx64C1]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="GTX780 Sharedmemoryreduktion\n Performance mit Veränderung der Problemgröße \n  L1 prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(allsharedgpu780[Indsx4C1],allsharedgpu780[Indsx8C1],allsharedgpu780[Indsx16C1],
allsharedgpu780[Indsx32C1],allsharedgpu780[Indsx64C1]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=allsharedgpu780[Indsx4C1],x=1:5,col="red",pch=5)
points(y=allsharedgpu780[Indsx8C1],x=1:5,col="blue",pch=5)
points(y=allsharedgpu780[Indsx16C1],x=1:5,col="green",pch=5)
points(y=allsharedgpu780[Indsx32C1],x=1:5,col="orange",pch=5)
points(y=allsharedgpu780[Indsx64C1],x=1:5,col="magenta",pch=5)

lines(y=allsharedgpu780[Indsx4C1],x=1:5,col="red",pch=5)
lines(y=allsharedgpu780[Indsx8C1],x=1:5,col="blue",pch=5)
lines(y=allsharedgpu780[Indsx16C1],x=1:5,col="green",pch=5)
lines(y=allsharedgpu780[Indsx32C1],x=1:5,col="orange",pch=5)
lines(y=allsharedgpu780[Indsx64C1],x=1:5,col="magenta",pch=5)


#Cacheconfig 2
plot(ylim=c(0,max(c(allsharedgpu780[Indsx4C2],allsharedgpu780[Indsx8C2],allsharedgpu780[Indsx16C2],
allsharedgpu780[Indsx32C2],allsharedgpu780[Indsx64C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="GTX780 Sharedmemoryreduktion\n Performance mit Veränderung der Problemgröße \n  Shared Memory Prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(allsharedgpu780[Indsx4C2],allsharedgpu780[Indsx8C2],allsharedgpu780[Indsx16C2],
allsharedgpu780[Indsx32C2],allsharedgpu780[Indsx64C2]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=allsharedgpu780[Indsx4C2],x=1:5,col="red",pch=5)
points(y=allsharedgpu780[Indsx8C2],x=1:5,col="blue",pch=5)
points(y=allsharedgpu780[Indsx16C2],x=1:5,col="green",pch=5)
points(y=allsharedgpu780[Indsx32C2],x=1:5,col="orange",pch=5)
points(y=allsharedgpu780[Indsx64C2],x=1:5,col="magenta",pch=5)

lines(y=allsharedgpu780[Indsx4C2],x=1:5,col="red",pch=5)
lines(y=allsharedgpu780[Indsx8C2],x=1:5,col="blue",pch=5)
lines(y=allsharedgpu780[Indsx16C2],x=1:5,col="green",pch=5)
lines(y=allsharedgpu780[Indsx32C2],x=1:5,col="orange",pch=5)
lines(y=allsharedgpu780[Indsx64C2],x=1:5,col="magenta",pch=5)

#Cacheconfig 3
plot(ylim=c(0,max(c(allsharedgpu780[Indsx4C3],allsharedgpu780[Indsx8C3],allsharedgpu780[Indsx16C3],
allsharedgpu780[Indsx32C3],allsharedgpu780[Indsx64C3]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="GTX780 Sharedmemoryreduktion\n Performance mit Veränderung der Problemgröße \n  L1=shared Memory=32kB")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(allsharedgpu780[Indsx4C3],allsharedgpu780[Indsx8C3],allsharedgpu780[Indsx16C3],
allsharedgpu780[Indsx32C3],allsharedgpu780[Indsx64C3]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=allsharedgpu780[Indsx4C3],x=1:5,col="red",pch=5)
points(y=allsharedgpu780[Indsx8C3],x=1:5,col="blue",pch=5)
points(y=allsharedgpu780[Indsx16C3],x=1:5,col="green",pch=5)
points(y=allsharedgpu780[Indsx32C3],x=1:5,col="orange",pch=5)
points(y=allsharedgpu780[Indsx64C3],x=1:5,col="magenta",pch=5)

lines(y=allsharedgpu780[Indsx4C3],x=1:5,col="red",pch=5)
lines(y=allsharedgpu780[Indsx8C3],x=1:5,col="blue",pch=5)
lines(y=allsharedgpu780[Indsx16C3],x=1:5,col="green",pch=5)
lines(y=allsharedgpu780[Indsx32C3],x=1:5,col="orange",pch=5)
lines(y=allsharedgpu780[Indsx64C3],x=1:5,col="magenta",pch=5)

##P100

allsharedP100<-read.table("../Data_for_R/P100allsharedresultsGFL",sep="\n")
allsharedgpuP100<-allsharedP100$V1

#Cacheconfig1

Indsx4C1<-1:5+0
Indsx8C1<-1:5+5
Indsx16C1<-1:5+10
Indsx32C1<-1:5+15
Indsx64C1<-1:5+20

#Cacheconfig2

Indsx4C2<-1:5+25
Indsx8C2<-1:5+30
Indsx16C2<-1:5+35
Indsx32C2<-1:5+40
Indsx64C2<-1:5+45

#Cachconfig3
Indsx4C3<-1:5+50
Indsx8C3<-1:5+55
Indsx16C3<-1:5+60
Indsx32C3<-1:5+65
Indsx64C3<-1:5+70


plot(ylim=c(0,max(c(allsharedgpuP100[Indsx4C1],allsharedgpuP100[Indsx8C1],allsharedgpuP100[Indsx16C1],
allsharedgpuP100[Indsx32C1],allsharedgpuP100[Indsx64C1]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="P100 Sharedmemoryreduktion\n Performance mit Veränderung der Problemgröße \n  L1 prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(allsharedgpuP100[Indsx4C1],allsharedgpuP100[Indsx8C1],allsharedgpuP100[Indsx16C1],
allsharedgpuP100[Indsx32C1],allsharedgpuP100[Indsx64C1]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=allsharedgpuP100[Indsx4C1],x=1:5,col="red",pch=5)
points(y=allsharedgpuP100[Indsx8C1],x=1:5,col="blue",pch=5)
points(y=allsharedgpuP100[Indsx16C1],x=1:5,col="green",pch=5)
points(y=allsharedgpuP100[Indsx32C1],x=1:5,col="orange",pch=5)
points(y=allsharedgpuP100[Indsx64C1],x=1:5,col="magenta",pch=5)

lines(y=allsharedgpuP100[Indsx4C1],x=1:5,col="red",pch=5)
lines(y=allsharedgpuP100[Indsx8C1],x=1:5,col="blue",pch=5)
lines(y=allsharedgpuP100[Indsx16C1],x=1:5,col="green",pch=5)
lines(y=allsharedgpuP100[Indsx32C1],x=1:5,col="orange",pch=5)
lines(y=allsharedgpuP100[Indsx64C1],x=1:5,col="magenta",pch=5)


#Cacheconfig 2
plot(ylim=c(0,max(c(allsharedgpuP100[Indsx4C2],allsharedgpuP100[Indsx8C2],allsharedgpuP100[Indsx16C2],
allsharedgpuP100[Indsx32C2],allsharedgpuP100[Indsx64C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="P100 Sharedmemoryreduktion\n Performance mit Veränderung der Problemgröße \n  Shared Memory Prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(allsharedgpuP100[Indsx4C2],allsharedgpuP100[Indsx8C2],allsharedgpuP100[Indsx16C2],
allsharedgpuP100[Indsx32C2],allsharedgpuP100[Indsx64C2]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=allsharedgpuP100[Indsx4C2],x=1:5,col="red",pch=5)
points(y=allsharedgpuP100[Indsx8C2],x=1:5,col="blue",pch=5)
points(y=allsharedgpuP100[Indsx16C2],x=1:5,col="green",pch=5)
points(y=allsharedgpuP100[Indsx32C2],x=1:5,col="orange",pch=5)
points(y=allsharedgpuP100[Indsx64C2],x=1:5,col="magenta",pch=5)

lines(y=allsharedgpuP100[Indsx4C2],x=1:5,col="red",pch=5)
lines(y=allsharedgpuP100[Indsx8C2],x=1:5,col="blue",pch=5)
lines(y=allsharedgpuP100[Indsx16C2],x=1:5,col="green",pch=5)
lines(y=allsharedgpuP100[Indsx32C2],x=1:5,col="orange",pch=5)
lines(y=allsharedgpuP100[Indsx64C2],x=1:5,col="magenta",pch=5)

#Cacheconfig 3
plot(ylim=c(0,max(c(allsharedgpuP100[Indsx4C3],allsharedgpuP100[Indsx8C3],allsharedgpuP100[Indsx16C3],
allsharedgpuP100[Indsx32C3],allsharedgpuP100[Indsx64C3]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="P100 Sharedmemoryreduktion\n Performance mit Veränderung der Problemgröße \n  L1=shared Memory=32kB")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(allsharedgpuP100[Indsx4C3],allsharedgpuP100[Indsx8C3],allsharedgpuP100[Indsx16C3],
allsharedgpuP100[Indsx32C3],allsharedgpuP100[Indsx64C3]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=allsharedgpuP100[Indsx4C3],x=1:5,col="red",pch=5)
points(y=allsharedgpuP100[Indsx8C3],x=1:5,col="blue",pch=5)
points(y=allsharedgpuP100[Indsx16C3],x=1:5,col="green",pch=5)
points(y=allsharedgpuP100[Indsx32C3],x=1:5,col="orange",pch=5)
points(y=allsharedgpuP100[Indsx64C3],x=1:5,col="magenta",pch=5)

lines(y=allsharedgpuP100[Indsx4C3],x=1:5,col="red",pch=5)
lines(y=allsharedgpuP100[Indsx8C3],x=1:5,col="blue",pch=5)
lines(y=allsharedgpuP100[Indsx16C3],x=1:5,col="green",pch=5)
lines(y=allsharedgpuP100[Indsx32C3],x=1:5,col="orange",pch=5)
lines(y=allsharedgpuP100[Indsx64C3],x=1:5,col="magenta",pch=5)

