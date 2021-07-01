##SX=8
##RTX2070super
sharedatomic2070super<-read.table("../Data_for_R/RTX2070supersharedatomicresultsGFL",sep="\n")
sharedatomicgpu2070super<-sharedatomic2070super$V1

allshared2070super<-read.table("../Data_for_R/RTX2070superallsharedresultsGFL",sep="\n")
allsharedgpu2070super<-allshared2070super$V1

onlyatomic2070super<-read.table("../Data_for_R/RTX2070superonlyatomicresultsGFL",sep="\n")
onlyatomicgpu2070super<-onlyatomic2070super$V1

intragrid2070super<-read.table("../Data_for_R/RTX2070superintragridresultsGFL",sep="\n")
intragridgpu2070super<-intragrid2070super$V1

Indsx8C2<-1:5+30
Indsx16C2<-1:5+35
Indsx32C2<-1:5+40

plot(ylim=c(0,max(c(sharedatomicgpu2070super[Indsx8C2],
allsharedgpu2070super[Indsx8C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="RTX2070super, Vergleich der Algortihmen,Sx=8\n Performance mit Veränderung der Problemgröße,
 shared Memory prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(sharedatomicgpu2070super[Indsx8C2],allsharedgpu2070super[Indsx8C2]))*1.25,
legend=c("sharedatomic","allshared","onlyatomicgpu2070super","intragrid"), col=c("red","blue","orange","magenta"),lty="solid")


points(y=sharedatomicgpu2070super[Indsx8C2],x=1:5,col="red",pch=5)
points(y=allsharedgpu2070super[Indsx8C2],x=1:5,col="blue",pch=5)
points(y=onlyatomicgpu2070super[Indsx8C2],x=1:5,col="orange",pch=5)
points(y=intragridgpu2070super[Indsx8C2],x=1:5,col="magenta",pch=5)

lines(y=sharedatomicgpu2070super[Indsx8C2],x=1:5,col="red",pch=5)
lines(y=allsharedgpu2070super[Indsx8C2],x=1:5,col="blue",pch=5)
lines(y=onlyatomicgpu2070super[Indsx8C2],x=1:5,col="orange",pch=5)
lines(y=intragridgpu2070super[Indsx8C2],x=1:5,col="magenta",pch=5)

##P100
sharedatomicP100<-read.table("../Data_for_R/P100sharedatomicresultsGFL",sep="\n")
sharedatomicgpuP100<-sharedatomicP100$V1

allsharedP100<-read.table("../Data_for_R/P100allsharedresultsGFL",sep="\n")
allsharedgpuP100<-allsharedP100$V1

onlyatomicP100<-read.table("../Data_for_R/P100onlyatomicresultsGFL",sep="\n")
onlyatomicgpuP100<-onlyatomicP100$V1

intragridP100<-read.table("../Data_for_R/P100intragridresultsGFL",sep="\n")
intragridgpuP100<-intragridP100$V1

Indsx8C2<-1:5+30
Indsx16C2<-1:5+35
Indsx32C2<-1:5+40

plot(ylim=c(0,max(c(sharedatomicgpuP100[Indsx8C2],
allsharedgpuP100[Indsx8C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="P100, Vergleich der Algortihmen,Sx=8\n Performance mit Veränderung der Problemgröße,
 shared Memory prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(sharedatomicgpuP100[Indsx8C2],allsharedgpuP100[Indsx8C2]))*1.25,
legend=c("sharedatomic","allshared","onlyatomicgpuP100","intragrid"), col=c("red","blue","orange","magenta"),lty="solid")


points(y=sharedatomicgpuP100[Indsx8C2],x=1:5,col="red",pch=5)
points(y=allsharedgpuP100[Indsx8C2],x=1:5,col="blue",pch=5)
points(y=onlyatomicgpuP100[Indsx8C2],x=1:5,col="orange",pch=5)
points(y=intragridgpuP100[Indsx8C2],x=1:5,col="magenta",pch=5)

lines(y=sharedatomicgpuP100[Indsx8C2],x=1:5,col="red",pch=5)
lines(y=allsharedgpuP100[Indsx8C2],x=1:5,col="blue",pch=5)
lines(y=onlyatomicgpuP100[Indsx8C2],x=1:5,col="orange",pch=5)
lines(y=intragridgpuP100[Indsx8C2],x=1:5,col="magenta",pch=5)

##GTX780

sharedatomic780<-read.table("../Data_for_R/GTX780sharedatomicresultsGFL",sep="\n")
sharedatomicgpu780<-sharedatomic780$V1

allshared780<-read.table("../Data_for_R/GTX780allsharedresultsGFL",sep="\n")
allsharedgpu780<-allshared780$V1

onlyatomic780<-read.table("../Data_for_R/GTX780onlyatomicresultsGFL",sep="\n")
onlyatomicgpu780<-onlyatomic780$V1

plot(ylim=c(0,max(c(sharedatomicgpu780[Indsx8C2],
allsharedgpu780[Indsx8C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="GTX780, Vergleich der Algortihmen,Sx=8\n Performance mit Veränderung der Problemgröße,
 shared Memory prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(sharedatomicgpu780[Indsx8C2],allsharedgpu780[Indsx8C2]))*1.25,
legend=c("sharedatomic","allshared","onlyatomicgpu780"), col=c("red","blue","orange"),lty="solid")


points(y=sharedatomicgpu780[Indsx8C2],x=1:5,col="red",pch=5)
points(y=allsharedgpu780[Indsx8C2],x=1:5,col="blue",pch=5)
points(y=onlyatomicgpu780[Indsx8C2],x=1:5,col="orange",pch=5)


lines(y=sharedatomicgpu780[Indsx8C2],x=1:5,col="red",pch=5)
lines(y=allsharedgpu780[Indsx8C2],x=1:5,col="blue",pch=5)
lines(y=onlyatomicgpu780[Indsx8C2],x=1:5,col="orange",pch=5)


##SX=16
plot(ylim=c(0,max(c(sharedatomicgpu2070super[Indsx16C2],
allsharedgpu2070super[Indsx16C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="RTX2070super, Vergleich der Algortihmen,Sx=16\n Performance mit Veränderung der Problemgröße,
 shared Memory prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(sharedatomicgpu2070super[Indsx16C2],allsharedgpu2070super[Indsx16C2]))*1.25,
legend=c("sharedatomic","allshared","onlyatomicgpu2070super","intragrid"), col=c("red","blue","orange","magenta"),lty="solid")


points(y=sharedatomicgpu2070super[Indsx16C2],x=1:5,col="red",pch=5)
points(y=allsharedgpu2070super[Indsx16C2],x=1:5,col="blue",pch=5)
points(y=onlyatomicgpu2070super[Indsx16C2],x=1:5,col="orange",pch=5)
points(y=intragridgpu2070super[Indsx16C2],x=1:5,col="magenta",pch=5)

lines(y=sharedatomicgpu2070super[Indsx16C2],x=1:5,col="red",pch=5)
lines(y=allsharedgpu2070super[Indsx16C2],x=1:5,col="blue",pch=5)
lines(y=onlyatomicgpu2070super[Indsx16C2],x=1:5,col="orange",pch=5)
lines(y=intragridgpu2070super[Indsx16C2],x=1:5,col="magenta",pch=5)

plot(ylim=c(0,max(c(sharedatomicgpuP100[Indsx16C2],
allsharedgpuP100[Indsx16C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="P100, Vergleich der Algortihmen,Sx=16\n Performance mit Veränderung der Problemgröße,
 shared Memory prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(sharedatomicgpuP100[Indsx16C2],allsharedgpuP100[Indsx16C2]))*1.25,
legend=c("sharedatomic","allshared","onlyatomicgpuP100","intragrid"), col=c("red","blue","orange","magenta"),lty="solid")

points(y=sharedatomicgpuP100[Indsx16C2],x=1:5,col="red",pch=5)
points(y=allsharedgpuP100[Indsx16C2],x=1:5,col="blue",pch=5)
points(y=onlyatomicgpuP100[Indsx16C2],x=1:5,col="orange",pch=5)
points(y=intragridgpuP100[Indsx16C2],x=1:5,col="magenta",pch=5)

lines(y=sharedatomicgpuP100[Indsx16C2],x=1:5,col="red",pch=5)
lines(y=allsharedgpuP100[Indsx16C2],x=1:5,col="blue",pch=5)
lines(y=onlyatomicgpuP100[Indsx16C2],x=1:5,col="orange",pch=5)
lines(y=intragridgpuP100[Indsx16C2],x=1:5,col="magenta",pch=5)



plot(ylim=c(0,max(c(sharedatomicgpu780[Indsx16C2],
allsharedgpu780[Indsx16C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="GTX780, Vergleich der Algortihmen,Sx=16\n Performance mit Veränderung der Problemgröße,
 shared Memory prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(sharedatomicgpu780[Indsx16C2],allsharedgpu780[Indsx16C2]))*1.25,
legend=c("sharedatomic","allshared","onlyatomicgpu780"), col=c("red","blue","orange"),lty="solid")


points(y=sharedatomicgpu780[Indsx16C2],x=1:5,col="red",pch=5)
points(y=allsharedgpu780[Indsx16C2],x=1:5,col="blue",pch=5)
points(y=onlyatomicgpu780[Indsx16C2],x=1:5,col="orange",pch=5)


lines(y=sharedatomicgpu780[Indsx16C2],x=1:5,col="red",pch=5)
lines(y=allsharedgpu780[Indsx16C2],x=1:5,col="blue",pch=5)
lines(y=onlyatomicgpu780[Indsx16C2],x=1:5,col="orange",pch=5)


##SX=32
#points(y=sharedatomicgpuP100[Indsx16C2],x=1:5,col="red",pch=5)
#points(y=allsharedgpuP100[Indsx16C2],x=1:5,col="blue",pch=5)
#points(y=onlyatomicgpuP100[Indsx16C2],x=1:5,col="orange",pch=5)
#points(y=intragridgpuP100[Indsx16C2],x=1:5,col="magenta",pch=5)

#lines(y=sharedatomicgpuP100[Indsx16C2],x=1:5,col="red",pch=5)
#lines(y=allsharedgpuP100[Indsx16C2],x=1:5,col="blue",pch=5)
#lines(y=onlyatomicgpuP100[Indsx16C2],x=1:5,col="orange",pch=5)
#lines(y=intragridgpuP100[Indsx16C2],x=1:5,col="magenta",pch=5)


plot(ylim=c(0,max(c(sharedatomicgpu2070super[Indsx32C2],
allsharedgpu2070super[Indsx32C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="RTX2070super, Vergleich der Algortihmen,Sx=32\n Performance mit Veränderung der Problemgröße,
 shared Memory prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(sharedatomicgpu2070super[Indsx32C2],allsharedgpu2070super[Indsx32C2]))*1.25,
legend=c("sharedatomic","allshared","onlyatomicgpu2070super","intragrid"), col=c("red","blue","orange","magenta"),lty="solid")


points(y=sharedatomicgpu2070super[Indsx32C2],x=1:5,col="red",pch=5)
points(y=allsharedgpu2070super[Indsx32C2],x=1:5,col="blue",pch=5)
points(y=onlyatomicgpu2070super[Indsx32C2],x=1:5,col="orange",pch=5)
points(y=intragridgpu2070super[Indsx32C2],x=1:5,col="magenta",pch=5)

lines(y=sharedatomicgpu2070super[Indsx32C2],x=1:5,col="red",pch=5)
lines(y=allsharedgpu2070super[Indsx32C2],x=1:5,col="blue",pch=5)
lines(y=onlyatomicgpu2070super[Indsx32C2],x=1:5,col="orange",pch=5)
lines(y=intragridgpu2070super[Indsx32C2],x=1:5,col="magenta",pch=5)

plot(ylim=c(0,max(c(sharedatomicgpuP100[Indsx32C2],
allsharedgpuP100[Indsx32C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="P100, Vergleich der Algortihmen,Sx=32\n Performance mit Veränderung der Problemgröße,
 shared Memory prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(sharedatomicgpuP100[Indsx32C2],allsharedgpuP100[Indsx32C2]))*1.25,
legend=c("sharedatomic","allshared","onlyatomicgpuP100","intragrid"), col=c("red","blue","orange","magenta"),lty="solid")


points(y=sharedatomicgpuP100[Indsx32C2],x=1:5,col="red",pch=5)
points(y=allsharedgpuP100[Indsx32C2],x=1:5,col="blue",pch=5)
points(y=onlyatomicgpuP100[Indsx32C2],x=1:5,col="orange",pch=5)
points(y=intragridgpuP100[Indsx32C2],x=1:5,col="magenta",pch=5)

lines(y=sharedatomicgpuP100[Indsx32C2],x=1:5,col="red",pch=5)
lines(y=allsharedgpuP100[Indsx32C2],x=1:5,col="blue",pch=5)
lines(y=onlyatomicgpuP100[Indsx32C2],x=1:5,col="orange",pch=5)
lines(y=intragridgpuP100[Indsx32C2],x=1:5,col="magenta",pch=5)


plot(ylim=c(0,max(c(sharedatomicgpu780[Indsx32C2],
allsharedgpu780[Indsx32C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="GTX780, Vergleich der Algortihmen,Sx=32\n Performance mit Veränderung der Problemgröße,
 shared Memory prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(sharedatomicgpu780[Indsx32C2],allsharedgpu780[Indsx32C2]))*1.25,
legend=c("sharedatomic","allshared","onlyatomicgpu780"), col=c("red","blue","orange"),lty="solid")


points(y=sharedatomicgpu780[Indsx32C2],x=1:5,col="red",pch=5)
points(y=allsharedgpu780[Indsx32C2],x=1:5,col="blue",pch=5)
points(y=onlyatomicgpu780[Indsx32C2],x=1:5,col="orange",pch=5)


lines(y=sharedatomicgpu780[Indsx32C2],x=1:5,col="red",pch=5)
lines(y=allsharedgpu780[Indsx32C2],x=1:5,col="blue",pch=5)
lines(y=onlyatomicgpu780[Indsx32C2],x=1:5,col="orange",pch=5)

