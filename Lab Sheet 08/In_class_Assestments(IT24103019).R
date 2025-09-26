setwd("C:\\Users\\IT24103019\\Desktop\\IT24103019")
getwd()

data<-read.table("Data - Lab 8.txt" ,header=TRUE)
data
fix(data)
attach(data)

#Q1

popmn<-mean(Nicotine)
popmn
popvar<-var(Nicotine)
popvar

#Q2

samples<-c()
n<-c()

for(i in 1:30){
  s<-sample(Nicotine,5,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste("S",i))
}

colnames(samples)=n
s.means<-apply(samples,2,mean)
s.means
s.vars<-apply(samples,2,var)
s.vars

#Q3

samplemean<-mean(s.means)
samplemean
samplevars<-var(s.means)
samplevars


#Q4

popmn
samplemean


#Q5

truevar=popvar/5
truevar
samplevars


