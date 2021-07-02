##RTX2070super sharedatomic

sharedatomic2070super<-read.table("../Data_for_R/RTX2070supersharedatomicresultsGFL",sep="\n")
sharedatomicgpu2070super<-sharedatomic2070super$V1

#Cacheconfig2

Indsx4C2<-1:5+25
Indsx8C2<-1:5+30
Indsx16C2<-1:5+35
Indsx32C2<-1:5+40
Indsx64C2<-1:5+45


##RTX2070super shuffle
shuffle2070super<-read.table("../Data_for_R/RTX2070supershuffleresultsGFL",sep="\n")
shufflegpu2070super<-shuffle2070super$V1

Indshuff<-6:10

#Cacheconfig 2
plot(ylim=c(0,max(shufflegpu2070super)*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="RTX2070super, Kernel 2 zu shuffle\n Performance mit Veränderung der Problemgröße \n  Shared Memory Prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(shufflegpu2070super)*1.25,
legend=c("shuffle","Kernel 2, sx=8"), col=c("green","orange"),lty="solid")

points(y=sharedatomicgpu2070super[Indsx8C2],x=1:5,col="orange",pch=5)
points(y=shufflegpu2070super[Indshuff],x=1:5,col="green",pch=5)

lines(y=sharedatomicgpu2070super[Indsx8C2],x=1:5,col="orange",pch=5)
lines(y=shufflegpu2070super[Indshuff],x=1:5,col="green",pch=5)

##P100 sharedatomic

sharedatomicP100<-read.table("../Data_for_R/P100allsharedresultsGFL",sep="\n")
sharedatomicgpuP100<-sharedatomicP100$V1

#Cacheconfig2

Indsx4C2<-1:5+25
Indsx8C2<-1:5+30
Indsx16C2<-1:5+35
Indsx32C2<-1:5+40
Indsx64C2<-1:5+45


##P100 shuffle
shuffleP100<-read.table("../Data_for_R/P100shuffleresultsGFL",sep="\n")
shufflegpuP100<-shuffleP100$V1

Indshuff<-6:10

#Cacheconfig 2
plot(ylim=c(0,max(shufflegpuP100)*1.25),x=1:5,typ="n",xaxt="n",xlab="n",
ylab="Performance GFlops",main="P100, Kernel 1 zu shuffle\n Performance mit Veränderung der Problemgröße \n  Shared Memory Prefered")

axis(1,at=1:5,labels=2^(0:4))

legend(1,max(shufflegpuP100)*1.25,
legend=c("shuffle","Kernel 1, sx=8"), col=c("green","red"),lty="solid")

points(y=sharedatomicgpuP100[Indsx8C2],x=1:5,col="red",pch=5)
points(y=shufflegpuP100[Indshuff],x=1:5,col="green",pch=5)

lines(y=sharedatomicgpuP100[Indsx8C2],x=1:5,col="red",pch=5)
lines(y=shufflegpuP100[Indshuff],x=1:5,col="green",pch=5)




