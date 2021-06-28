allshared2070super<-read.table("../Data_for_R/RTX2070superallsharedresultsGFL",sep="\n")
allsharedgpu2070super<-allshared2070super$V1


#Für i=16, Cacheconfig 1
#Indizes
sx<-2^(2:6)

IndC1i1<-1+(0:4)*5
IndC1i4<-3+(0:4)*5
IndC1i16<-5+(0:4)*5


plot(ylim=c(min(c(0,allsharedgpu2070super[IndC1i16],allsharedgpu2070super[IndC1i4],allsharedgpu2070super[IndC1i1]))*0.9
,max(c(allsharedgpu2070super[IndC1i16],allsharedgpu2070super[IndC1i4],allsharedgpu2070super[IndC1i1]))*1.25),
x=1:5,typ="n",xaxt="n",xlab="Sx",
ylab="Performance GFlops",main="RTX2070super\n Performance mit Veränderung von Blockgröße \n sx Variabel, Sy konstant, L1 prefered")

points(y=allsharedgpu2070super[IndC1i1],x=1:5,col="red",pch=5)
points(y=allsharedgpu2070super[IndC1i4],x=1:5,col="blue",pch=5)
points(y=allsharedgpu2070super[IndC1i16],x=1:5,col="green",pch=5)

lines(y=allsharedgpu2070super[IndC1i1],x=1:5,col="red",pch=5)
lines(y=allsharedgpu2070super[IndC1i4],x=1:5,col="blue",pch=5)
lines(y=allsharedgpu2070super[IndC1i16],x=1:5,col="green",pch=5)

axis(1,at=1:5,labels=2^(2:6))

legend(1,max(c(allsharedgpu2070super[IndC1i16],allsharedgpu2070super[IndC1i4],allsharedgpu2070super[IndC1i1]))*1.25,
legend=c("i=1","i=4","i=16"), col=c("red","blue","green"),lty="solid")


##GTX780
allsharedGTX780<-read.table("../Data_for_R/GTX780allsharedresultsGFL",sep="\n")
allsharedgpuGTX780<-allsharedGTX780$V1


plot(ylim=c(min(c(0,allsharedgpuGTX780[IndC1i16],allsharedgpuGTX780[IndC1i4],allsharedgpuGTX780[IndC1i1]))*0.9
,max(c(allsharedgpuGTX780[IndC1i16],allsharedgpuGTX780[IndC1i4],allsharedgpuGTX780[IndC1i1]))*1.25),
x=1:5,typ="n",xaxt="n",xlab="Sx",
ylab="Performance GFlops",main="RTXGTX780\n Performance mit Veränderung von Blockgröße \n sx Variabel, Sy konstant, L1 Prefered")
points(y=allsharedgpuGTX780[IndC1i1],x=1:5,col="red",pch=5)
points(y=allsharedgpuGTX780[IndC1i4],x=1:5,col="blue",pch=5)
points(y=allsharedgpuGTX780[IndC1i16],x=1:5,col="green",pch=5)

lines(y=allsharedgpuGTX780[IndC1i1],x=1:5,col="red",pch=5)
lines(y=allsharedgpuGTX780[IndC1i4],x=1:5,col="blue",pch=5)
lines(y=allsharedgpuGTX780[IndC1i16],x=1:5,col="green",pch=5)

axis(1,at=1:5,labels=2^(2:6))

legend(1,max(c(allsharedgpuGTX780[IndC1i16],allsharedgpuGTX780[IndC1i4],allsharedgpuGTX780[IndC1i1]))*1.25,
legend=c("i=1","i=4","i=16"), col=c("red","blue","green"),lty="solid")


##P100
allsharedP100<-read.table("../Data_for_R/P100allsharedresultsGFL",sep="\n")
allsharedgpuP100<-allsharedP100$V1


plot(ylim=c(min(c(0,allsharedgpuP100[IndC1i16],allsharedgpuP100[IndC1i4],allsharedgpuP100[IndC1i1]))*0.9
,max(c(allsharedgpuP100[IndC1i16],allsharedgpuP100[IndC1i4],allsharedgpuP100[IndC1i1]))*1.25),
x=1:5,typ="n",xaxt="n",xlab="Sx",
ylab="Performance GFlops",main="RTXP100\n Performance mit Veränderung von Blockgröße \n sx Variabel, Sy konstant, L1 prefered")
points(y=allsharedgpuP100[IndC1i1],x=1:5,col="red",pch=5)
points(y=allsharedgpuP100[IndC1i4],x=1:5,col="blue",pch=5)
points(y=allsharedgpuP100[IndC1i16],x=1:5,col="green",pch=5)

lines(y=allsharedgpuP100[IndC1i1],x=1:5,col="red",pch=5)
lines(y=allsharedgpuP100[IndC1i4],x=1:5,col="blue",pch=5)
lines(y=allsharedgpuP100[IndC1i16],x=1:5,col="green",pch=5)

axis(1,at=1:5,labels=2^(2:6))
legend(1,max(c(allsharedgpuP100[IndC1i16],allsharedgpuP100[IndC1i4],allsharedgpuP100[IndC1i1]))*1.25,
legend=c("i=1","i=4","i=16"), col=c("red","blue","green"),lty="solid")

##Cachekonfiguration 2

IndC2i1<-1+(0:4)*5+25
IndC2i4<-3+(0:4)*5+25
IndC2i16<-5+(0:4)*5+25

plot(ylim=c(min(c(0,allsharedgpu2070super[IndC2i16],allsharedgpu2070super[IndC2i4],allsharedgpu2070super[IndC2i1]))*0.9
,max(c(allsharedgpu2070super[IndC2i16],allsharedgpu2070super[IndC2i4],allsharedgpu2070super[IndC2i1]))*1.25),
x=1:5,typ="n",xaxt="n",xlab="Sx",
ylab="Performance GFlops",main="RTX2070super\n Performance mit Veränderung von Blockgröße \n sx Variabel, Sy konstant, shared prefered")

points(y=allsharedgpu2070super[IndC2i1],x=1:5,col="red",pch=5)
points(y=allsharedgpu2070super[IndC2i4],x=1:5,col="blue",pch=5)
points(y=allsharedgpu2070super[IndC2i16],x=1:5,col="green",pch=5)

lines(y=allsharedgpu2070super[IndC2i1],x=1:5,col="red",pch=5)
lines(y=allsharedgpu2070super[IndC2i4],x=1:5,col="blue",pch=5)
lines(y=allsharedgpu2070super[IndC2i16],x=1:5,col="green",pch=5)

axis(1,at=1:5,labels=2^(2:6))

legend(1,max(c(allsharedgpu2070super[IndC2i16],allsharedgpu2070super[IndC2i4],allsharedgpu2070super[IndC2i1]))*1.25,
legend=c("i=1","i=4","i=16"), col=c("red","blue","green"),lty="solid")


##GTX780
allsharedGTX780<-read.table("../Data_for_R/GTX780allsharedresultsGFL",sep="\n")
allsharedgpuGTX780<-allsharedGTX780$V1


plot(ylim=c(min(c(0,allsharedgpuGTX780[IndC2i16],allsharedgpuGTX780[IndC2i4],allsharedgpuGTX780[IndC2i1]))*0.9
,max(c(allsharedgpuGTX780[IndC2i16],allsharedgpuGTX780[IndC2i4],allsharedgpuGTX780[IndC2i1]))*1.25),
x=1:5,typ="n",xaxt="n",xlab="Sx",
ylab="Performance GFlops",main="RTXGTX780\n Performance mit Veränderung von Blockgröße \n sx Variabel, Sy konstant, shared Prefered")
points(y=allsharedgpuGTX780[IndC2i1],x=1:5,col="red",pch=5)
points(y=allsharedgpuGTX780[IndC2i4],x=1:5,col="blue",pch=5)
points(y=allsharedgpuGTX780[IndC2i16],x=1:5,col="green",pch=5)

lines(y=allsharedgpuGTX780[IndC2i1],x=1:5,col="red",pch=5)
lines(y=allsharedgpuGTX780[IndC2i4],x=1:5,col="blue",pch=5)
lines(y=allsharedgpuGTX780[IndC2i16],x=1:5,col="green",pch=5)

axis(1,at=1:5,labels=2^(2:6))

legend(1,max(c(allsharedgpuGTX780[IndC2i16],allsharedgpuGTX780[IndC2i4],allsharedgpuGTX780[IndC2i1]))*1.25,
legend=c("i=1","i=4","i=16"), col=c("red","blue","green"),lty="solid")


##P100
allsharedP100<-read.table("../Data_for_R/P100allsharedresultsGFL",sep="\n")
allsharedgpuP100<-allsharedP100$V1


plot(ylim=c(min(c(0,allsharedgpuP100[IndC2i16],allsharedgpuP100[IndC2i4],allsharedgpuP100[IndC2i1]))*0.9
,max(c(allsharedgpuP100[IndC2i16],allsharedgpuP100[IndC2i4],allsharedgpuP100[IndC2i1]))*1.25),
x=1:5,typ="n",xaxt="n",xlab="Sx",
ylab="Performance GFlops",main="RTXP100\n Performance mit Veränderung von Blockgröße \n sx Variabel, Sy konstant, shared prefered")
points(y=allsharedgpuP100[IndC2i1],x=1:5,col="red",pch=5)
points(y=allsharedgpuP100[IndC2i4],x=1:5,col="blue",pch=5)
points(y=allsharedgpuP100[IndC2i16],x=1:5,col="green",pch=5)

lines(y=allsharedgpuP100[IndC2i1],x=1:5,col="red",pch=5)
lines(y=allsharedgpuP100[IndC2i4],x=1:5,col="blue",pch=5)
lines(y=allsharedgpuP100[IndC2i16],x=1:5,col="green",pch=5)

axis(1,at=1:5,labels=2^(2:6))
legend(1,max(c(allsharedgpuP100[IndC2i16],allsharedgpuP100[IndC2i4],allsharedgpuP100[IndC2i1]))*1.25,
legend=c("i=1","i=4","i=16"), col=c("red","blue","green"),lty="solid")

IndC3i1<-1+(0:4)*5+50
IndC3i4<-3+(0:4)*5+50
IndC3i16<-5+(0:4)*5+50

plot(ylim=c(min(c(0,allsharedgpu2070super[IndC3i16],allsharedgpu2070super[IndC3i4],allsharedgpu2070super[IndC3i1]))*0.9
,max(c(allsharedgpu2070super[IndC3i16],allsharedgpu2070super[IndC3i4],allsharedgpu2070super[IndC3i1]))*1.25),
x=1:5,typ="n",xaxt="n",xlab="Sx",
ylab="Performance GFlops",main="RTX2070super\n Performance mit Veränderung von Blockgröße \n sx Variabel, Sy konstant, L1=shared=32kB")

points(y=allsharedgpu2070super[IndC3i1],x=1:5,col="red",pch=5)
points(y=allsharedgpu2070super[IndC3i4],x=1:5,col="blue",pch=5)
points(y=allsharedgpu2070super[IndC3i16],x=1:5,col="green",pch=5)

lines(y=allsharedgpu2070super[IndC3i1],x=1:5,col="red",pch=5)
lines(y=allsharedgpu2070super[IndC3i4],x=1:5,col="blue",pch=5)
lines(y=allsharedgpu2070super[IndC3i16],x=1:5,col="green",pch=5)

axis(1,at=1:5,labels=2^(2:6))

legend(1,max(c(allsharedgpu2070super[IndC3i16],allsharedgpu2070super[IndC3i4],allsharedgpu2070super[IndC3i1]))*1.25,
legend=c("i=1","i=4","i=16"), col=c("red","blue","green"),lty="solid")


##GTX780
allsharedGTX780<-read.table("../Data_for_R/GTX780allsharedresultsGFL",sep="\n")
allsharedgpuGTX780<-allsharedGTX780$V1


plot(ylim=c(min(c(0,allsharedgpuGTX780[IndC3i16],allsharedgpuGTX780[IndC3i4],allsharedgpuGTX780[IndC3i1]))*0.9
,max(c(allsharedgpuGTX780[IndC3i16],allsharedgpuGTX780[IndC3i4],allsharedgpuGTX780[IndC3i1]))*1.25),
x=1:5,typ="n",xaxt="n",xlab="Sx",
ylab="Performance GFlops",main="RTXGTX780\n Performance mit Veränderung von Blockgröße \n sx Variabel, Sy konstant, L1=shared=32kB")
points(y=allsharedgpuGTX780[IndC3i1],x=1:5,col="red",pch=5)
points(y=allsharedgpuGTX780[IndC3i4],x=1:5,col="blue",pch=5)
points(y=allsharedgpuGTX780[IndC3i16],x=1:5,col="green",pch=5)

lines(y=allsharedgpuGTX780[IndC3i1],x=1:5,col="red",pch=5)
lines(y=allsharedgpuGTX780[IndC3i4],x=1:5,col="blue",pch=5)
lines(y=allsharedgpuGTX780[IndC3i16],x=1:5,col="green",pch=5)

axis(1,at=1:5,labels=2^(2:6))

legend(1,max(c(allsharedgpuGTX780[IndC3i16],allsharedgpuGTX780[IndC3i4],allsharedgpuGTX780[IndC3i1]))*1.25,
legend=c("i=1","i=4","i=16"), col=c("red","blue","green"),lty="solid")


##P100
allsharedP100<-read.table("../Data_for_R/P100allsharedresultsGFL",sep="\n")
allsharedgpuP100<-allsharedP100$V1


plot(ylim=c(min(c(0,allsharedgpuP100[IndC3i16],allsharedgpuP100[IndC3i4],allsharedgpuP100[IndC3i1]))*0.9
,max(c(allsharedgpuP100[IndC3i16],allsharedgpuP100[IndC3i4],allsharedgpuP100[IndC3i1]))*1.25),
x=1:5,typ="n",xaxt="n",xlab="Sx",
ylab="Performance GFlops",main="RTXP100\n Performance mit Veränderung von Blockgröße \n sx Variabel, Sy konstant, L1=shared=32kB")
points(y=allsharedgpuP100[IndC3i1],x=1:5,col="red",pch=5)
points(y=allsharedgpuP100[IndC3i4],x=1:5,col="blue",pch=5)
points(y=allsharedgpuP100[IndC3i16],x=1:5,col="green",pch=5)

lines(y=allsharedgpuP100[IndC3i1],x=1:5,col="red",pch=5)
lines(y=allsharedgpuP100[IndC3i4],x=1:5,col="blue",pch=5)
lines(y=allsharedgpuP100[IndC3i16],x=1:5,col="green",pch=5)

axis(1,at=1:5,labels=2^(2:6))
legend(1,max(c(allsharedgpuP100[IndC3i16],allsharedgpuP100[IndC3i4],allsharedgpuP100[IndC3i1]))*1.25,
legend=c("i=1","i=4","i=16"), col=c("red","blue","green"),lty="solid")

#nonesharedgpu01<-read.table("gpu01noneshareddth",sep="\n")
#nonesharedgpu01data<-nonesharedgpu01$V1

#sharedgpu02<-read.table("gpu02shareddth",sep="\n")
#sharedgpu02data<-sharedgpu02$V1

#nonesharedgpu02<-read.table("gpu02noneshareddth",sep="\n")
#nonesharedgpu02data<-nonesharedgpu02$V1

#plot(ylim=c(min(c(0,sharedgpu01data,nonesharedgpu01data,sharedgpu02data,nonesharedgpu02data))*0.9
#,max(c(sharedgpu01data,nonesharedgpu01data,sharedgpu02data,nonesharedgpu02data))*1.25),x=1:5,typ="n",xaxt="n",xlab="n=1024*i",
#ylab="Bandbreite GB/s",
#main="Copy Device to Host")
##axis(1,at=1:5,labels=10^(1:5))
#axis(1,at=1:5,labels=2^(0:4))
##axis(2,at=1:5,label=10^(1:5))
#points(y=sharedgpu01data,x=1:5,col="blue",pch=5)
#lines(y=sharedgpu01data,x=1:5,col="blue",pch=5)
#legend(1,max(c(sharedgpu01data,nonesharedgpu01data,sharedgpu02data,nonesharedgpu02data))*1.25,
#legend=c("RTX2070 Super shared","RTX2070 Super noneshared","GTX780 shared","GTX780 noneshared"),lty="solid",
#col=c("blue","orange","red","green"))


#points(y=nonesharedgpu01data,x=1:5,col="orange",pch=5)
#lines(y=nonesharedgpu01data,x=1:5,col="orange",pch=5)

#sharedgpu02
#sharedgpu02data
#points(y=sharedgpu02data[1:4],x=1:4,col="red",pch=5)
#lines(y=sharedgpu02data[1:4],x=1:4,col="red",pch=5)

#points(y=nonesharedgpu02data[1:4],x=1:4,col="green",pch=5)
#lines(y=nonesharedgpu02data[1:4],x=1:4,col="green",pch=5)
