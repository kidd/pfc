holarai<-sm.density(dd,h=h.select(dd,method="cv"),phi=0,theta=-60,display="persp",xlab="% mostra",ylab="Error aboslut")

holarai<-sm.density(dd,h=h.select(dd,method="cv"),ngrid=50)

x<-holarai$eval.points[,1]
y<-holarai$eval.points[,2]
Z<-holarai$estimate
tot<-sum(apply(Z,2,sum))

A<-matrix(data=NA,nrow=length(x),ncol=length(y))
rownames(A)<-x
colnames(A)<-y

for(i in 1:length(x)){
	for(j in 1:length(y)){
		raievalua<-Z[1:i,1:j]
		if((i==1)|(j==1)) A[i,j]<-100*sum(raievalua)/tot
		else A[i,j]<-100*sum(apply(raievalua,1,sum))/tot
		print(c(i,j,A[i,j]))
	}
}

write.table(A,file="taula_proporcions_rai")
