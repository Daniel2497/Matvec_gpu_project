##RTX2070super

sharedatomic2070super<-read.table("../Data_for_R/RTX2070supersharedatomicresultsGFL",sep="\n")
sharedatomicgpu2070super<-sharedatomic2070super$V1

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


plot(ylim=c(0,max(c(sharedatomicgpu2070super[Indsx4C1],sharedatomicgpu2070super[Indsx8C1],sharedatomicgpu2070super[Indsx16C1],
sharedatomicgpu2070super[Indsx32C1],sharedatomicgpu2070super[Indsx64C1]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="RTX2070super, Reduktion in Blöcken shared
 Reduktion über Blöcke atomic\n Performance mit Veränderung der Problemgröße \n  L1 prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(sharedatomicgpu2070super[Indsx4C1],sharedatomicgpu2070super[Indsx8C1],sharedatomicgpu2070super[Indsx16C1],
sharedatomicgpu2070super[Indsx32C1],sharedatomicgpu2070super[Indsx64C1]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=sharedatomicgpu2070super[Indsx4C1],x=1:5,col="red",pch=5)
points(y=sharedatomicgpu2070super[Indsx8C1],x=1:5,col="blue",pch=5)
points(y=sharedatomicgpu2070super[Indsx16C1],x=1:5,col="green",pch=5)
points(y=sharedatomicgpu2070super[Indsx32C1],x=1:5,col="orange",pch=5)
points(y=sharedatomicgpu2070super[Indsx64C1],x=1:5,col="magenta",pch=5)

lines(y=sharedatomicgpu2070super[Indsx4C1],x=1:5,col="red",pch=5)
lines(y=sharedatomicgpu2070super[Indsx8C1],x=1:5,col="blue",pch=5)
lines(y=sharedatomicgpu2070super[Indsx16C1],x=1:5,col="green",pch=5)
lines(y=sharedatomicgpu2070super[Indsx32C1],x=1:5,col="orange",pch=5)
lines(y=sharedatomicgpu2070super[Indsx64C1],x=1:5,col="magenta",pch=5)


#Cacheconfig 2
plot(ylim=c(0,max(c(sharedatomicgpu2070super[Indsx4C2],sharedatomicgpu2070super[Indsx8C2],sharedatomicgpu2070super[Indsx16C2],
sharedatomicgpu2070super[Indsx32C2],sharedatomicgpu2070super[Indsx64C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="RTX2070super, Reduktion in Blöcken shared
 Reduktion über Blöcke atomic\n Performance mit Veränderung der Problemgröße \n  Shared Memory Prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(sharedatomicgpu2070super[Indsx4C2],sharedatomicgpu2070super[Indsx8C2],sharedatomicgpu2070super[Indsx16C2],
sharedatomicgpu2070super[Indsx32C2],sharedatomicgpu2070super[Indsx64C2]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=sharedatomicgpu2070super[Indsx4C2],x=1:5,col="red",pch=5)
points(y=sharedatomicgpu2070super[Indsx8C2],x=1:5,col="blue",pch=5)
points(y=sharedatomicgpu2070super[Indsx16C2],x=1:5,col="green",pch=5)
points(y=sharedatomicgpu2070super[Indsx32C2],x=1:5,col="orange",pch=5)
points(y=sharedatomicgpu2070super[Indsx64C2],x=1:5,col="magenta",pch=5)

lines(y=sharedatomicgpu2070super[Indsx4C2],x=1:5,col="red",pch=5)
lines(y=sharedatomicgpu2070super[Indsx8C2],x=1:5,col="blue",pch=5)
lines(y=sharedatomicgpu2070super[Indsx16C2],x=1:5,col="green",pch=5)
lines(y=sharedatomicgpu2070super[Indsx32C2],x=1:5,col="orange",pch=5)
lines(y=sharedatomicgpu2070super[Indsx64C2],x=1:5,col="magenta",pch=5)

#Cacheconfig 3
plot(ylim=c(0,max(c(sharedatomicgpu2070super[Indsx4C3],sharedatomicgpu2070super[Indsx8C3],sharedatomicgpu2070super[Indsx16C3],
sharedatomicgpu2070super[Indsx32C3],sharedatomicgpu2070super[Indsx64C3]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="RTX2070super, Reduktion in Blöcken shared
 Reduktion über Blöcke atomic\n Performance mit Veränderung der Problemgröße \n  L1=shared Memory=32kB")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(sharedatomicgpu2070super[Indsx4C3],sharedatomicgpu2070super[Indsx8C3],sharedatomicgpu2070super[Indsx16C3],
sharedatomicgpu2070super[Indsx32C3],sharedatomicgpu2070super[Indsx64C3]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=sharedatomicgpu2070super[Indsx4C3],x=1:5,col="red",pch=5)
points(y=sharedatomicgpu2070super[Indsx8C3],x=1:5,col="blue",pch=5)
points(y=sharedatomicgpu2070super[Indsx16C3],x=1:5,col="green",pch=5)
points(y=sharedatomicgpu2070super[Indsx32C3],x=1:5,col="orange",pch=5)
points(y=sharedatomicgpu2070super[Indsx64C3],x=1:5,col="magenta",pch=5)

lines(y=sharedatomicgpu2070super[Indsx4C3],x=1:5,col="red",pch=5)
lines(y=sharedatomicgpu2070super[Indsx8C3],x=1:5,col="blue",pch=5)
lines(y=sharedatomicgpu2070super[Indsx16C3],x=1:5,col="green",pch=5)
lines(y=sharedatomicgpu2070super[Indsx32C3],x=1:5,col="orange",pch=5)
lines(y=sharedatomicgpu2070super[Indsx64C3],x=1:5,col="magenta",pch=5)

##GTX780

sharedatomic780<-read.table("../Data_for_R/GTX780sharedatomicresultsGFL",sep="\n")
sharedatomicgpu780<-sharedatomic780$V1

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


plot(ylim=c(0,max(c(sharedatomicgpu780[Indsx4C1],sharedatomicgpu780[Indsx8C1],sharedatomicgpu780[Indsx16C1],
sharedatomicgpu780[Indsx32C1],sharedatomicgpu780[Indsx64C1]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="GTX780, Reduktion in Blöcken shared
 Reduktion über Blöcke atomic\n Performance mit Veränderung der Problemgröße \n  L1 prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(sharedatomicgpu780[Indsx4C1],sharedatomicgpu780[Indsx8C1],sharedatomicgpu780[Indsx16C1],
sharedatomicgpu780[Indsx32C1],sharedatomicgpu780[Indsx64C1]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=sharedatomicgpu780[Indsx4C1],x=1:5,col="red",pch=5)
points(y=sharedatomicgpu780[Indsx8C1],x=1:5,col="blue",pch=5)
points(y=sharedatomicgpu780[Indsx16C1],x=1:5,col="green",pch=5)
points(y=sharedatomicgpu780[Indsx32C1],x=1:5,col="orange",pch=5)
points(y=sharedatomicgpu780[Indsx64C1],x=1:5,col="magenta",pch=5)

lines(y=sharedatomicgpu780[Indsx4C1],x=1:5,col="red",pch=5)
lines(y=sharedatomicgpu780[Indsx8C1],x=1:5,col="blue",pch=5)
lines(y=sharedatomicgpu780[Indsx16C1],x=1:5,col="green",pch=5)
lines(y=sharedatomicgpu780[Indsx32C1],x=1:5,col="orange",pch=5)
lines(y=sharedatomicgpu780[Indsx64C1],x=1:5,col="magenta",pch=5)


#Cacheconfig 2
plot(ylim=c(0,max(c(sharedatomicgpu780[Indsx4C2],sharedatomicgpu780[Indsx8C2],sharedatomicgpu780[Indsx16C2],
sharedatomicgpu780[Indsx32C2],sharedatomicgpu780[Indsx64C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="GTX780, Reduktion in Blöcken shared
 Reduktion über Blöcke atomic\n Performance mit Veränderung der Problemgröße \n  Shared Memory Prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(sharedatomicgpu780[Indsx4C2],sharedatomicgpu780[Indsx8C2],sharedatomicgpu780[Indsx16C2],
sharedatomicgpu780[Indsx32C2],sharedatomicgpu780[Indsx64C2]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=sharedatomicgpu780[Indsx4C2],x=1:5,col="red",pch=5)
points(y=sharedatomicgpu780[Indsx8C2],x=1:5,col="blue",pch=5)
points(y=sharedatomicgpu780[Indsx16C2],x=1:5,col="green",pch=5)
points(y=sharedatomicgpu780[Indsx32C2],x=1:5,col="orange",pch=5)
points(y=sharedatomicgpu780[Indsx64C2],x=1:5,col="magenta",pch=5)

lines(y=sharedatomicgpu780[Indsx4C2],x=1:5,col="red",pch=5)
lines(y=sharedatomicgpu780[Indsx8C2],x=1:5,col="blue",pch=5)
lines(y=sharedatomicgpu780[Indsx16C2],x=1:5,col="green",pch=5)
lines(y=sharedatomicgpu780[Indsx32C2],x=1:5,col="orange",pch=5)
lines(y=sharedatomicgpu780[Indsx64C2],x=1:5,col="magenta",pch=5)

#Cacheconfig 3
plot(ylim=c(0,max(c(sharedatomicgpu780[Indsx4C3],sharedatomicgpu780[Indsx8C3],sharedatomicgpu780[Indsx16C3],
sharedatomicgpu780[Indsx32C3],sharedatomicgpu780[Indsx64C3]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="GTX780, Reduktion in Blöcken shared
 Reduktion über Blöcke atomic\n Performance mit Veränderung der Problemgröße \n  L1=shared Memory=32kB")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(sharedatomicgpu780[Indsx4C3],sharedatomicgpu780[Indsx8C3],sharedatomicgpu780[Indsx16C3],
sharedatomicgpu780[Indsx32C3],sharedatomicgpu780[Indsx64C3]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=sharedatomicgpu780[Indsx4C3],x=1:5,col="red",pch=5)
points(y=sharedatomicgpu780[Indsx8C3],x=1:5,col="blue",pch=5)
points(y=sharedatomicgpu780[Indsx16C3],x=1:5,col="green",pch=5)
points(y=sharedatomicgpu780[Indsx32C3],x=1:5,col="orange",pch=5)
points(y=sharedatomicgpu780[Indsx64C3],x=1:5,col="magenta",pch=5)

lines(y=sharedatomicgpu780[Indsx4C3],x=1:5,col="red",pch=5)
lines(y=sharedatomicgpu780[Indsx8C3],x=1:5,col="blue",pch=5)
lines(y=sharedatomicgpu780[Indsx16C3],x=1:5,col="green",pch=5)
lines(y=sharedatomicgpu780[Indsx32C3],x=1:5,col="orange",pch=5)
lines(y=sharedatomicgpu780[Indsx64C3],x=1:5,col="magenta",pch=5)

##P100

sharedatomicP100<-read.table("../Data_for_R/P100sharedatomicresultsGFL",sep="\n")
sharedatomicgpuP100<-sharedatomicP100$V1

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


plot(ylim=c(0,max(c(sharedatomicgpuP100[Indsx4C1],sharedatomicgpuP100[Indsx8C1],sharedatomicgpuP100[Indsx16C1],
sharedatomicgpuP100[Indsx32C1],sharedatomicgpuP100[Indsx64C1]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="P100, Reduktion in Blöcken shared
 Reduktion über Blöcke atomic\n Performance mit Veränderung der Problemgröße \n  L1 prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(sharedatomicgpuP100[Indsx4C1],sharedatomicgpuP100[Indsx8C1],sharedatomicgpuP100[Indsx16C1],
sharedatomicgpuP100[Indsx32C1],sharedatomicgpuP100[Indsx64C1]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=sharedatomicgpuP100[Indsx4C1],x=1:5,col="red",pch=5)
points(y=sharedatomicgpuP100[Indsx8C1],x=1:5,col="blue",pch=5)
points(y=sharedatomicgpuP100[Indsx16C1],x=1:5,col="green",pch=5)
points(y=sharedatomicgpuP100[Indsx32C1],x=1:5,col="orange",pch=5)
points(y=sharedatomicgpuP100[Indsx64C1],x=1:5,col="magenta",pch=5)

lines(y=sharedatomicgpuP100[Indsx4C1],x=1:5,col="red",pch=5)
lines(y=sharedatomicgpuP100[Indsx8C1],x=1:5,col="blue",pch=5)
lines(y=sharedatomicgpuP100[Indsx16C1],x=1:5,col="green",pch=5)
lines(y=sharedatomicgpuP100[Indsx32C1],x=1:5,col="orange",pch=5)
lines(y=sharedatomicgpuP100[Indsx64C1],x=1:5,col="magenta",pch=5)


#Cacheconfig 2
plot(ylim=c(0,max(c(sharedatomicgpuP100[Indsx4C2],sharedatomicgpuP100[Indsx8C2],sharedatomicgpuP100[Indsx16C2],
sharedatomicgpuP100[Indsx32C2],sharedatomicgpuP100[Indsx64C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="P100, Reduktion in Blöcken shared
 Reduktion über Blöcke atomic\n Performance mit Veränderung der Problemgröße \n  Shared Memory Prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(sharedatomicgpuP100[Indsx4C2],sharedatomicgpuP100[Indsx8C2],sharedatomicgpuP100[Indsx16C2],
sharedatomicgpuP100[Indsx32C2],sharedatomicgpuP100[Indsx64C2]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=sharedatomicgpuP100[Indsx4C2],x=1:5,col="red",pch=5)
points(y=sharedatomicgpuP100[Indsx8C2],x=1:5,col="blue",pch=5)
points(y=sharedatomicgpuP100[Indsx16C2],x=1:5,col="green",pch=5)
points(y=sharedatomicgpuP100[Indsx32C2],x=1:5,col="orange",pch=5)
points(y=sharedatomicgpuP100[Indsx64C2],x=1:5,col="magenta",pch=5)

lines(y=sharedatomicgpuP100[Indsx4C2],x=1:5,col="red",pch=5)
lines(y=sharedatomicgpuP100[Indsx8C2],x=1:5,col="blue",pch=5)
lines(y=sharedatomicgpuP100[Indsx16C2],x=1:5,col="green",pch=5)
lines(y=sharedatomicgpuP100[Indsx32C2],x=1:5,col="orange",pch=5)
lines(y=sharedatomicgpuP100[Indsx64C2],x=1:5,col="magenta",pch=5)

#Cacheconfig 3
plot(ylim=c(0,max(c(sharedatomicgpuP100[Indsx4C3],sharedatomicgpuP100[Indsx8C3],sharedatomicgpuP100[Indsx16C3],
sharedatomicgpuP100[Indsx32C3],sharedatomicgpuP100[Indsx64C3]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="P100, Reduktion in Blöcken shared
 Reduktion über Blöcke atomic\n Performance mit Veränderung der Problemgröße \n  L1=shared Memory=32kB")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(sharedatomicgpuP100[Indsx4C3],sharedatomicgpuP100[Indsx8C3],sharedatomicgpuP100[Indsx16C3],
sharedatomicgpuP100[Indsx32C3],sharedatomicgpuP100[Indsx64C3]))*1.25,
legend=c("sx=4","sx=8","sx=16","sx=32","sx=64"), col=c("red","blue","green","orange","magenta"),lty="solid")


points(y=sharedatomicgpuP100[Indsx4C3],x=1:5,col="red",pch=5)
points(y=sharedatomicgpuP100[Indsx8C3],x=1:5,col="blue",pch=5)
points(y=sharedatomicgpuP100[Indsx16C3],x=1:5,col="green",pch=5)
points(y=sharedatomicgpuP100[Indsx32C3],x=1:5,col="orange",pch=5)
points(y=sharedatomicgpuP100[Indsx64C3],x=1:5,col="magenta",pch=5)

lines(y=sharedatomicgpuP100[Indsx4C3],x=1:5,col="red",pch=5)
lines(y=sharedatomicgpuP100[Indsx8C3],x=1:5,col="blue",pch=5)
lines(y=sharedatomicgpuP100[Indsx16C3],x=1:5,col="green",pch=5)
lines(y=sharedatomicgpuP100[Indsx32C3],x=1:5,col="orange",pch=5)
lines(y=sharedatomicgpuP100[Indsx64C3],x=1:5,col="magenta",pch=5)

