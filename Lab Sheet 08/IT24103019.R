setwd("C:\\Users\\IT24103019\\Desktop\\IT24103019")
getwd()

data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
data
fix(data)
attach(data)

#Q1

Weight<-as.numeric(data$Weight.kg.)
weight<-Weight
popmn<-mean(weight)
popmn
popsd<-sd(Weight)
popsd

#Q2
samples<- c()
n<-c()

set.seed(123)
nsamples<-25
samplesize<-6

samplemeans<- numeric(nsamples)
samplemeans
samplesds<- numeric(nsamples)
samplesds


for(i in 1:nsamples){
  s<- sample(Weight,samplesize,replace=TRUE)
  samplemeans[i]<- mean(s)
  samplesds[i] <-sd(s)
}


#Q3

meanofSampleMeans<-mean(samplemeans)
meanofSampleMeans
sdofSampleMeans<-sd(samplesds)
sdofSampleMeans

