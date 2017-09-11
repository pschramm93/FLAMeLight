##Import FLAMe chemistry data
##Paul Schramm
##2017-09-07

##Work Flow
# Load data directory
# get list of files
# Open ProcessedData>Date_Name_8_samples
# read data into dataframe
# export CSV


library(data.table)

#FLAMe laptop
#dir=c("C:/Users/FLAMe/Dropbox/FLAMe_Light/Data")

#Paul Desktop
dir=c("B:/Dropbox/FLAMe_Light/Data")

#Define dataframes
samples=data.frame
data=data.frame()

#get list of files from directory
setwd(dir)
files=list.files(dir)
file_name=character(length=length(files))


#loop to add directry and file name extensions to list
for(i in 1:length(files)){
  file_name[i]=paste(dir,files[i], 'ProcessedData/', sep="/")
  file_name[i]=paste(file_name[i],files[i],'_08_Samples.csv',sep="")
}

#Read csv files from list of files
samples=lapply(file_name, read.csv,header = TRUE, stringsAsFactors=T)
#Format data
samples=do.call(rbind,samples)

#write samples to CSV  
setwd("B:/Dropbox/FLAMe_Light/processed_data")
write.csv(samples,file="flame_samples.csv")


