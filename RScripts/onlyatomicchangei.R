##RTX2070super

onlyatomic2070super<-read.table("../Data_for_R/RTX2070superonlyatomicresultsGFL",sep="\n")
onlyatomicgpu2070super<-onlyatomic2070super$V1

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


plot(ylim=c(0,max(c(onlyatomicgpu2070super[Indsx4C1],onlyatomicgpu2070super[Indsx8C1],onlyatomicgpu2070super[Indsx16C1],
onlyatomicgpu2070super[Indsx32C1],onlyatomicgpu2070super[Indsx64C1]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="RTX2070super, Kernel 3\n Performance mit Veränderung der Problemgröße \n  L1 prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(onlyatomicgpu2070super[Indsx4C1],onlyatomicgpu2070super[Indsx8C1],onlyatomicgpu2070super[Indsx16C1],
onlyatomicgpu2070super[Indsx32C1],onlyatomicgpu2070super[Indsx64C1]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=onlyatomicgpu2070super[Indsx4C1],x=1:5,col="red",pch=5)
points(y=onlyatomicgpu2070super[Indsx8C1],x=1:5,col="blue",pch=5)
points(y=onlyatomicgpu2070super[Indsx16C1],x=1:5,col="green",pch=5)
points(y=onlyatomicgpu2070super[Indsx32C1],x=1:5,col="orange",pch=5)
points(y=onlyatomicgpu2070super[Indsx64C1],x=1:5,col="magenta",pch=5)

lines(y=onlyatomicgpu2070super[Indsx4C1],x=1:5,col="red",pch=5)
lines(y=onlyatomicgpu2070super[Indsx8C1],x=1:5,col="blue",pch=5)
lines(y=onlyatomicgpu2070super[Indsx16C1],x=1:5,col="green",pch=5)
lines(y=onlyatomicgpu2070super[Indsx32C1],x=1:5,col="orange",pch=5)
lines(y=onlyatomicgpu2070super[Indsx64C1],x=1:5,col="magenta",pch=5)


#Cacheconfig 2
plot(ylim=c(0,max(c(onlyatomicgpu2070super[Indsx4C2],onlyatomicgpu2070super[Indsx8C2],onlyatomicgpu2070super[Indsx16C2],
onlyatomicgpu2070super[Indsx32C2],onlyatomicgpu2070super[Indsx64C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="RTX2070super, Kernel 3\n Performance mit Veränderung der Problemgröße \n  Shared Memory Prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(onlyatomicgpu2070super[Indsx4C2],onlyatomicgpu2070super[Indsx8C2],onlyatomicgpu2070super[Indsx16C2],
onlyatomicgpu2070super[Indsx32C2],onlyatomicgpu2070super[Indsx64C2]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=onlyatomicgpu2070super[Indsx4C2],x=1:5,col="red",pch=5)
points(y=onlyatomicgpu2070super[Indsx8C2],x=1:5,col="blue",pch=5)
points(y=onlyatomicgpu2070super[Indsx16C2],x=1:5,col="green",pch=5)
points(y=onlyatomicgpu2070super[Indsx32C2],x=1:5,col="orange",pch=5)
points(y=onlyatomicgpu2070super[Indsx64C2],x=1:5,col="magenta",pch=5)

lines(y=onlyatomicgpu2070super[Indsx4C2],x=1:5,col="red",pch=5)
lines(y=onlyatomicgpu2070super[Indsx8C2],x=1:5,col="blue",pch=5)
lines(y=onlyatomicgpu2070super[Indsx16C2],x=1:5,col="green",pch=5)
lines(y=onlyatomicgpu2070super[Indsx32C2],x=1:5,col="orange",pch=5)
lines(y=onlyatomicgpu2070super[Indsx64C2],x=1:5,col="magenta",pch=5)

#Cacheconfig 3
plot(ylim=c(0,max(c(onlyatomicgpu2070super[Indsx4C3],onlyatomicgpu2070super[Indsx8C3],onlyatomicgpu2070super[Indsx16C3],
onlyatomicgpu2070super[Indsx32C3],onlyatomicgpu2070super[Indsx64C3]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="RTX2070super, Kernel 3\n Performance mit Veränderung der Problemgröße \n  L1=shared Memory=32kB")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(onlyatomicgpu2070super[Indsx4C3],onlyatomicgpu2070super[Indsx8C3],onlyatomicgpu2070super[Indsx16C3],
onlyatomicgpu2070super[Indsx32C3],onlyatomicgpu2070super[Indsx64C3]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=onlyatomicgpu2070super[Indsx4C3],x=1:5,col="red",pch=5)
points(y=onlyatomicgpu2070super[Indsx8C3],x=1:5,col="blue",pch=5)
points(y=onlyatomicgpu2070super[Indsx16C3],x=1:5,col="green",pch=5)
points(y=onlyatomicgpu2070super[Indsx32C3],x=1:5,col="orange",pch=5)
points(y=onlyatomicgpu2070super[Indsx64C3],x=1:5,col="magenta",pch=5)

lines(y=onlyatomicgpu2070super[Indsx4C3],x=1:5,col="red",pch=5)
lines(y=onlyatomicgpu2070super[Indsx8C3],x=1:5,col="blue",pch=5)
lines(y=onlyatomicgpu2070super[Indsx16C3],x=1:5,col="green",pch=5)
lines(y=onlyatomicgpu2070super[Indsx32C3],x=1:5,col="orange",pch=5)
lines(y=onlyatomicgpu2070super[Indsx64C3],x=1:5,col="magenta",pch=5)

##GTX780

onlyatomic780<-read.table("../Data_for_R/GTX780onlyatomicresultsGFL",sep="\n")
onlyatomicgpu780<-onlyatomic780$V1

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


plot(ylim=c(0,max(c(onlyatomicgpu780[Indsx4C1],onlyatomicgpu780[Indsx8C1],onlyatomicgpu780[Indsx16C1],
onlyatomicgpu780[Indsx32C1],onlyatomicgpu780[Indsx64C1]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="GTX780, Kernel 3\n Performance mit Veränderung der Problemgröße \n  L1 prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(onlyatomicgpu780[Indsx4C1],onlyatomicgpu780[Indsx8C1],onlyatomicgpu780[Indsx16C1],
onlyatomicgpu780[Indsx32C1],onlyatomicgpu780[Indsx64C1]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=onlyatomicgpu780[Indsx4C1],x=1:5,col="red",pch=5)
points(y=onlyatomicgpu780[Indsx8C1],x=1:5,col="blue",pch=5)
points(y=onlyatomicgpu780[Indsx16C1],x=1:5,col="green",pch=5)
points(y=onlyatomicgpu780[Indsx32C1],x=1:5,col="orange",pch=5)
points(y=onlyatomicgpu780[Indsx64C1],x=1:5,col="magenta",pch=5)

lines(y=onlyatomicgpu780[Indsx4C1],x=1:5,col="red",pch=5)
lines(y=onlyatomicgpu780[Indsx8C1],x=1:5,col="blue",pch=5)
lines(y=onlyatomicgpu780[Indsx16C1],x=1:5,col="green",pch=5)
lines(y=onlyatomicgpu780[Indsx32C1],x=1:5,col="orange",pch=5)
lines(y=onlyatomicgpu780[Indsx64C1],x=1:5,col="magenta",pch=5)


#Cacheconfig 2
plot(ylim=c(0,max(c(onlyatomicgpu780[Indsx4C2],onlyatomicgpu780[Indsx8C2],onlyatomicgpu780[Indsx16C2],
onlyatomicgpu780[Indsx32C2],onlyatomicgpu780[Indsx64C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="GTX780, Kernel 3\n Performance mit Veränderung der Problemgröße \n  Shared Memory Prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(onlyatomicgpu780[Indsx4C2],onlyatomicgpu780[Indsx8C2],onlyatomicgpu780[Indsx16C2],
onlyatomicgpu780[Indsx32C2],onlyatomicgpu780[Indsx64C2]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=onlyatomicgpu780[Indsx4C2],x=1:5,col="red",pch=5)
points(y=onlyatomicgpu780[Indsx8C2],x=1:5,col="blue",pch=5)
points(y=onlyatomicgpu780[Indsx16C2],x=1:5,col="green",pch=5)
points(y=onlyatomicgpu780[Indsx32C2],x=1:5,col="orange",pch=5)
points(y=onlyatomicgpu780[Indsx64C2],x=1:5,col="magenta",pch=5)

lines(y=onlyatomicgpu780[Indsx4C2],x=1:5,col="red",pch=5)
lines(y=onlyatomicgpu780[Indsx8C2],x=1:5,col="blue",pch=5)
lines(y=onlyatomicgpu780[Indsx16C2],x=1:5,col="green",pch=5)
lines(y=onlyatomicgpu780[Indsx32C2],x=1:5,col="orange",pch=5)
lines(y=onlyatomicgpu780[Indsx64C2],x=1:5,col="magenta",pch=5)

#Cacheconfig 3
plot(ylim=c(0,max(c(onlyatomicgpu780[Indsx4C3],onlyatomicgpu780[Indsx8C3],onlyatomicgpu780[Indsx16C3],
onlyatomicgpu780[Indsx32C3],onlyatomicgpu780[Indsx64C3]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="GTX780, Kernel 3\n Performance mit Veränderung der Problemgröße \n  L1=shared Memory=32kB")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(onlyatomicgpu780[Indsx4C3],onlyatomicgpu780[Indsx8C3],onlyatomicgpu780[Indsx16C3],
onlyatomicgpu780[Indsx32C3],onlyatomicgpu780[Indsx64C3]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=onlyatomicgpu780[Indsx4C3],x=1:5,col="red",pch=5)
points(y=onlyatomicgpu780[Indsx8C3],x=1:5,col="blue",pch=5)
points(y=onlyatomicgpu780[Indsx16C3],x=1:5,col="green",pch=5)
points(y=onlyatomicgpu780[Indsx32C3],x=1:5,col="orange",pch=5)
points(y=onlyatomicgpu780[Indsx64C3],x=1:5,col="magenta",pch=5)

lines(y=onlyatomicgpu780[Indsx4C3],x=1:5,col="red",pch=5)
lines(y=onlyatomicgpu780[Indsx8C3],x=1:5,col="blue",pch=5)
lines(y=onlyatomicgpu780[Indsx16C3],x=1:5,col="green",pch=5)
lines(y=onlyatomicgpu780[Indsx32C3],x=1:5,col="orange",pch=5)
lines(y=onlyatomicgpu780[Indsx64C3],x=1:5,col="magenta",pch=5)

##P100

onlyatomicP100<-read.table("../Data_for_R/P100onlyatomicresultsGFL",sep="\n")
onlyatomicgpuP100<-onlyatomicP100$V1

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


plot(ylim=c(0,max(c(onlyatomicgpuP100[Indsx4C1],onlyatomicgpuP100[Indsx8C1],onlyatomicgpuP100[Indsx16C1],
onlyatomicgpuP100[Indsx32C1],onlyatomicgpuP100[Indsx64C1]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="P100, Kernel 3\n Performance mit Veränderung der Problemgröße \n  L1 prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(onlyatomicgpuP100[Indsx4C1],onlyatomicgpuP100[Indsx8C1],onlyatomicgpuP100[Indsx16C1],
onlyatomicgpuP100[Indsx32C1],onlyatomicgpuP100[Indsx64C1]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=onlyatomicgpuP100[Indsx4C1],x=1:5,col="red",pch=5)
points(y=onlyatomicgpuP100[Indsx8C1],x=1:5,col="blue",pch=5)
points(y=onlyatomicgpuP100[Indsx16C1],x=1:5,col="green",pch=5)
points(y=onlyatomicgpuP100[Indsx32C1],x=1:5,col="orange",pch=5)
points(y=onlyatomicgpuP100[Indsx64C1],x=1:5,col="magenta",pch=5)

lines(y=onlyatomicgpuP100[Indsx4C1],x=1:5,col="red",pch=5)
lines(y=onlyatomicgpuP100[Indsx8C1],x=1:5,col="blue",pch=5)
lines(y=onlyatomicgpuP100[Indsx16C1],x=1:5,col="green",pch=5)
lines(y=onlyatomicgpuP100[Indsx32C1],x=1:5,col="orange",pch=5)
lines(y=onlyatomicgpuP100[Indsx64C1],x=1:5,col="magenta",pch=5)


#Cacheconfig 2
plot(ylim=c(0,max(c(onlyatomicgpuP100[Indsx4C2],onlyatomicgpuP100[Indsx8C2],onlyatomicgpuP100[Indsx16C2],
onlyatomicgpuP100[Indsx32C2],onlyatomicgpuP100[Indsx64C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="P100, Kernel 3\n Performance mit Veränderung der Problemgröße \n  Shared Memory Prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(onlyatomicgpuP100[Indsx4C2],onlyatomicgpuP100[Indsx8C2],onlyatomicgpuP100[Indsx16C2],
onlyatomicgpuP100[Indsx32C2],onlyatomicgpuP100[Indsx64C2]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=onlyatomicgpuP100[Indsx4C2],x=1:5,col="red",pch=5)
points(y=onlyatomicgpuP100[Indsx8C2],x=1:5,col="blue",pch=5)
points(y=onlyatomicgpuP100[Indsx16C2],x=1:5,col="green",pch=5)
points(y=onlyatomicgpuP100[Indsx32C2],x=1:5,col="orange",pch=5)
points(y=onlyatomicgpuP100[Indsx64C2],x=1:5,col="magenta",pch=5)

lines(y=onlyatomicgpuP100[Indsx4C2],x=1:5,col="red",pch=5)
lines(y=onlyatomicgpuP100[Indsx8C2],x=1:5,col="blue",pch=5)
lines(y=onlyatomicgpuP100[Indsx16C2],x=1:5,col="green",pch=5)
lines(y=onlyatomicgpuP100[Indsx32C2],x=1:5,col="orange",pch=5)
lines(y=onlyatomicgpuP100[Indsx64C2],x=1:5,col="magenta",pch=5)

#Cacheconfig 3
plot(ylim=c(0,max(c(onlyatomicgpuP100[Indsx4C3],onlyatomicgpuP100[Indsx8C3],onlyatomicgpuP100[Indsx16C3],
onlyatomicgpuP100[Indsx32C3],onlyatomicgpuP100[Indsx64C3]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="P100, Kernel 3\n Performance mit Veränderung der Problemgröße \n  L1=shared Memory=32kB")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(onlyatomicgpuP100[Indsx4C3],onlyatomicgpuP100[Indsx8C3],onlyatomicgpuP100[Indsx16C3],
onlyatomicgpuP100[Indsx32C3],onlyatomicgpuP100[Indsx64C3]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=onlyatomicgpuP100[Indsx4C3],x=1:5,col="red",pch=5)
points(y=onlyatomicgpuP100[Indsx8C3],x=1:5,col="blue",pch=5)
points(y=onlyatomicgpuP100[Indsx16C3],x=1:5,col="green",pch=5)
points(y=onlyatomicgpuP100[Indsx32C3],x=1:5,col="orange",pch=5)
points(y=onlyatomicgpuP100[Indsx64C3],x=1:5,col="magenta",pch=5)

lines(y=onlyatomicgpuP100[Indsx4C3],x=1:5,col="red",pch=5)
lines(y=onlyatomicgpuP100[Indsx8C3],x=1:5,col="blue",pch=5)
lines(y=onlyatomicgpuP100[Indsx16C3],x=1:5,col="green",pch=5)
lines(y=onlyatomicgpuP100[Indsx32C3],x=1:5,col="orange",pch=5)
lines(y=onlyatomicgpuP100[Indsx64C3],x=1:5,col="magenta",pch=5)

