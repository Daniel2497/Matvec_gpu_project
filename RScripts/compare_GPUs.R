##RTX2070super
sharedatomic2070super<-read.table("../Data_for_R/RTX2070supersharedatomicresultsGFL",sep="\n")
sharedatomicgpu2070super<-sharedatomic2070super$V1

##GTX780
sharedatomic780<-read.table("../Data_for_R/GTX780sharedatomicresultsGFL",sep="\n")
sharedatomicgpu780<-sharedatomic780$V1

##P100
sharedatomicP100<-read.table("../Data_for_R/P100sharedatomicresultsGFL",sep="\n")
sharedatomicgpuP100<-sharedatomicP100$V1

#Cacheconfig2, sx=8,16,32
Indsx8C2<-1:5+30
Indsx16C2<-1:5+35
Indsx32C2<-1:5+40


##SharedAtomic
plot(ylim=c(0,max(c(sharedatomicgpu2070super[Indsx8C2],sharedatomicgpu780[Indsx8C2],
sharedatomicgpu780[Indsx8C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="RTX2070super, Reduktion in Blöcken shared,\n Reduktion über Blöcke atomic,Sx=8\n Performance mit Veränderung der Problemgröße, shared Memory prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(sharedatomicgpu2070super[Indsx8C2],sharedatomicgpu780[Indsx8C2],
sharedatomicgpu780[Indsx8C2]))*1.25,
legend=c("RTX2070","GTX780","P100"), col=c("red","blue","green"),lty="solid")


points(y=sharedatomicgpu2070super[Indsx8C2],x=1:5,col="red",pch=5)
points(y=sharedatomicgpu780[Indsx8C2],x=1:5,col="blue",pch=5)
points(y=sharedatomicgpuP100[Indsx8C2],x=1:5,col="green",pch=5)

lines(y=sharedatomicgpu2070super[Indsx8C2],x=1:5,col="red",pch=5)
lines(y=sharedatomicgpu780[Indsx8C2],x=1:5,col="blue",pch=5)
lines(y=sharedatomicgpuP100[Indsx8C2],x=1:5,col="green",pch=5)


##RTX2070super
allshared2070super<-read.table("../Data_for_R/RTX2070superallsharedresultsGFL",sep="\n")
allsharedgpu2070super<-allshared2070super$V1

##GTX780
allshared780<-read.table("../Data_for_R/GTX780allsharedresultsGFL",sep="\n")
allsharedgpu780<-allshared780$V1

##P100
allsharedP100<-read.table("../Data_for_R/P100allsharedresultsGFL",sep="\n")
allsharedgpuP100<-allsharedP100$V1

#Cacheconfig2, sx=8,16,32
Indsx8C2<-1:5+30
Indsx16C2<-1:5+35
Indsx32C2<-1:5+40


##Allshared
plot(ylim=c(0,max(c(allsharedgpu2070super[Indsx8C2],allsharedgpu780[Indsx8C2],
allsharedgpuP100[Indsx8C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="RTX2070super, Reduktion nur über shared memory,Sx=8\n Performance mit Veränderung der Problemgröße, shared Memory prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(allsharedgpu2070super[Indsx8C2],allsharedgpu780[Indsx8C2],
allsharedgpuP100[Indsx8C2]))*1.25,
legend=c("RTX2070","GTX780","P100"), col=c("red","blue","green"),lty="solid")


points(y=allsharedgpu2070super[Indsx8C2],x=1:5,col="red",pch=5)
points(y=allsharedgpu780[Indsx8C2],x=1:5,col="blue",pch=5)
points(y=allsharedgpuP100[Indsx8C2],x=1:5,col="green",pch=5)

lines(y=allsharedgpu2070super[Indsx8C2],x=1:5,col="red",pch=5)
lines(y=allsharedgpu780[Indsx8C2],x=1:5,col="blue",pch=5)
lines(y=allsharedgpuP100[Indsx8C2],x=1:5,col="green",pch=5)

##RTX2070super
onlyatomic2070super<-read.table("../Data_for_R/RTX2070superonlyatomicresultsGFL",sep="\n")
onlyatomicgpu2070super<-onlyatomic2070super$V1

##GTX780
onlyatomic780<-read.table("../Data_for_R/GTX780onlyatomicresultsGFL",sep="\n")
onlyatomicgpu780<-onlyatomic780$V1

##P100
onlyatomicP100<-read.table("../Data_for_R/P100onlyatomicresultsGFL",sep="\n")
onlyatomicgpuP100<-onlyatomicP100$V1

#Cacheconfig2, sx=8,16,32
Indsx8C2<-1:5+30
Indsx16C2<-1:5+35
Indsx32C2<-1:5+40


##Onlyatomic
plot(ylim=c(0,max(c(onlyatomicgpu2070super[Indsx8C2],onlyatomicgpu780[Indsx8C2],
onlyatomicgpuP100[Indsx8C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="RTX2070super, Reduktion nur über Atomic,Sx=8\n Performance mit Veränderung der Problemgröße, shared Memory prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(onlyatomicgpu2070super[Indsx8C2],onlyatomicgpu780[Indsx8C2],
onlyatomicgpuP100[Indsx8C2]))*1.25,
legend=c("RTX2070","GTX780","P100"), col=c("red","blue","green"),lty="solid")


points(y=onlyatomicgpu2070super[Indsx8C2],x=1:5,col="red",pch=5)
points(y=onlyatomicgpu780[Indsx8C2],x=1:5,col="blue",pch=5)
points(y=onlyatomicgpuP100[Indsx8C2],x=1:5,col="green",pch=5)

lines(y=onlyatomicgpu2070super[Indsx8C2],x=1:5,col="red",pch=5)
lines(y=onlyatomicgpu780[Indsx8C2],x=1:5,col="blue",pch=5)
lines(y=onlyatomicgpuP100[Indsx8C2],x=1:5,col="green",pch=5)


##Sharedatomic sx16
plot(ylim=c(0,max(c(sharedatomicgpu2070super[Indsx16C2],sharedatomicgpu780[Indsx16C2],
sharedatomicgpu780[Indsx16C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="RTX2070super, Reduktion in Blöcken shared,\n Reduktion über Blöcke atomic,Sx=16\n Performance mit Veränderung der Problemgröße, shared Memory prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(sharedatomicgpu2070super[Indsx16C2],sharedatomicgpu780[Indsx16C2],
sharedatomicgpu780[Indsx16C2]))*1.25,
legend=c("RTX2070","GTX780","P100"), col=c("red","blue","green"),lty="solid")


points(y=sharedatomicgpu2070super[Indsx16C2],x=1:5,col="red",pch=5)
points(y=sharedatomicgpu780[Indsx16C2],x=1:5,col="blue",pch=5)
points(y=sharedatomicgpuP100[Indsx16C2],x=1:5,col="green",pch=5)

lines(y=sharedatomicgpu2070super[Indsx16C2],x=1:5,col="red",pch=5)
lines(y=sharedatomicgpu780[Indsx16C2],x=1:5,col="blue",pch=5)
lines(y=sharedatomicgpuP100[Indsx16C2],x=1:5,col="green",pch=5)

##allShared Sx16
plot(ylim=c(0,max(c(allsharedgpu2070super[Indsx16C2],allsharedgpu780[Indsx16C2],
allsharedgpuP100[Indsx16C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="RTX2070super, Reduktion nur über shared memory,Sx=16\n Performance mit Veränderung der Problemgröße, shared Memory prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(allsharedgpu2070super[Indsx16C2],allsharedgpu780[Indsx16C2],
allsharedgpuP100[Indsx16C2]))*1.25,
legend=c("RTX2070","GTX780","P100"), col=c("red","blue","green"),lty="solid")


points(y=allsharedgpu2070super[Indsx16C2],x=1:5,col="red",pch=5)
points(y=allsharedgpu780[Indsx16C2],x=1:5,col="blue",pch=5)
points(y=allsharedgpuP100[Indsx16C2],x=1:5,col="green",pch=5)

lines(y=allsharedgpu2070super[Indsx16C2],x=1:5,col="red",pch=5)
lines(y=allsharedgpu780[Indsx16C2],x=1:5,col="blue",pch=5)
lines(y=allsharedgpuP100[Indsx16C2],x=1:5,col="green",pch=5)

##Onlyatomic Sx=16


plot(ylim=c(0,max(c(onlyatomicgpu2070super[Indsx16C2],onlyatomicgpu780[Indsx16C2],
onlyatomicgpuP100[Indsx16C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="RTX2070super, Reduktion nur über Atomic,Sx=16\n Performance mit Veränderung der Problemgröße, shared Memory prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(onlyatomicgpu2070super[Indsx16C2],onlyatomicgpu780[Indsx16C2],
onlyatomicgpuP100[Indsx16C2]))*1.25,
legend=c("RTX2070","GTX780","P100"), col=c("red","blue","green"),lty="solid")


points(y=onlyatomicgpu2070super[Indsx16C2],x=1:5,col="red",pch=5)
points(y=onlyatomicgpu780[Indsx16C2],x=1:5,col="blue",pch=5)
points(y=onlyatomicgpuP100[Indsx16C2],x=1:5,col="green",pch=5)

lines(y=onlyatomicgpu2070super[Indsx16C2],x=1:5,col="red",pch=5)
lines(y=onlyatomicgpu780[Indsx16C2],x=1:5,col="blue",pch=5)
lines(y=onlyatomicgpuP100[Indsx16C2],x=1:5,col="green",pch=5)

##Sharedatomic sx32
plot(ylim=c(0,max(c(sharedatomicgpu2070super[Indsx32C2],sharedatomicgpu780[Indsx32C2],
sharedatomicgpuP100[Indsx32C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="RTX2070super, Reduktion in Blöcken shared,\n Reduktion über Blöcke atomic,Sx=32\n Performance mit Veränderung der Problemgröße, shared Memory prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(sharedatomicgpu2070super[Indsx32C2],sharedatomicgpu780[Indsx32C2],
sharedatomicgpuP100[Indsx32C2]))*1.25,
legend=c("RTX2070","GTX780","P100"), col=c("red","blue","green"),lty="solid")


points(y=sharedatomicgpu2070super[Indsx32C2],x=1:5,col="red",pch=5)
points(y=sharedatomicgpu780[Indsx32C2],x=1:5,col="blue",pch=5)
points(y=sharedatomicgpuP100[Indsx32C2],x=1:5,col="green",pch=5)

lines(y=sharedatomicgpu2070super[Indsx32C2],x=1:5,col="red",pch=5)
lines(y=sharedatomicgpu780[Indsx32C2],x=1:5,col="blue",pch=5)
lines(y=sharedatomicgpuP100[Indsx32C2],x=1:5,col="green",pch=5)

##allShared sx32
plot(ylim=c(0,max(c(allsharedgpu2070super[Indsx32C2],allsharedgpu780[Indsx32C2],
allsharedgpuP100[Indsx32C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="RTX2070super, Reduktion nur über shared memory,Sx=32\n Performance mit Veränderung der Problemgröße, shared Memory prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(allsharedgpu2070super[Indsx32C2],allsharedgpu780[Indsx32C2],
allsharedgpuP100[Indsx32C2]))*1.25,
legend=c("RTX2070","GTX780","P100"), col=c("red","blue","green"),lty="solid")


points(y=allsharedgpu2070super[Indsx32C2],x=1:5,col="red",pch=5)
points(y=allsharedgpu780[Indsx32C2],x=1:5,col="blue",pch=5)
points(y=allsharedgpuP100[Indsx32C2],x=1:5,col="green",pch=5)

lines(y=allsharedgpu2070super[Indsx32C2],x=1:5,col="red",pch=5)
lines(y=allsharedgpu780[Indsx32C2],x=1:5,col="blue",pch=5)
lines(y=allsharedgpuP100[Indsx32C2],x=1:5,col="green",pch=5)

##Onlyatomic Sx=32


plot(ylim=c(0,max(c(onlyatomicgpu2070super[Indsx32C2],onlyatomicgpu780[Indsx32C2],
onlyatomicgpuP100[Indsx32C2]))*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="RTX2070super, Reduktion nur über Atomic,Sx=32\n Performance mit Veränderung der Problemgröße, shared Memory prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(c(onlyatomicgpu2070super[Indsx32C2],onlyatomicgpu780[Indsx32C2],
onlyatomicgpuP100[Indsx32C2]))*1.25,
legend=c("RTX2070","GTX780","P100"), col=c("red","blue","green"),lty="solid")


points(y=onlyatomicgpu2070super[Indsx32C2],x=1:5,col="red",pch=5)
points(y=onlyatomicgpu780[Indsx32C2],x=1:5,col="blue",pch=5)
points(y=onlyatomicgpuP100[Indsx32C2],x=1:5,col="green",pch=5)

lines(y=onlyatomicgpu2070super[Indsx32C2],x=1:5,col="red",pch=5)
lines(y=onlyatomicgpu780[Indsx32C2],x=1:5,col="blue",pch=5)
lines(y=onlyatomicgpuP100[Indsx32C2],x=1:5,col="green",pch=5)

