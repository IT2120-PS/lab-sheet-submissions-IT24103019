setwd("C:\\Users\\it24103019\\Desktop\\IT24103019")

data<-read.table("Data.txt", header = TRUE, sep = ",")

fix(data)
attach(data)

#Part1
names(data)<-c("X1","X2")
attach(data)

hist(X2,main="Histogram for number shareholders")

#Part2
histogram<-hist(X2, main="Histogram for number of shareholders")
?hist


#Part3
breaks<- round(histogram$breaks)
freq<- histogram$counts
mids<- histogram$mids

classes<-c()
for (i in 1:length(breaks)-1){
  classes[i]<- paste0("[", breaks[i],",",breaks[i+1],")")
}

cbind(Classes = classes, frequency = freq)


#Part 4
lines(mids,freq)
plot(mids,freq,type='l', main="Frequency Polygon for shareholders", xlab = "Shareholders" , ylab = "Frequency" , ylim = c(0,max(freq)))


#Part5
cum.freq <- cumsum(freq)
new<-c()
for (i in 1:length(breaks)){
  if(i==1){
    new[i==1]
  }else{
    new[i]= cum.freq[i-1]
  }
}

plot(breaks,new,type = 'l', main="Cumalative Frequency Polygon for Shreholders", xlab ="Shareholders", ylab = "Cumulative Frequency", ylim = c(0,max(cum.freq)))

cbind(Upper = breaks, CumFreq = new)
