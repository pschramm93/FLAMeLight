##Light Profile Data
##Paul Schramm
##201-09-07

#Work Flow
# Import light profiles
# associate LTER sample number
# Split upcast vs downcast
# correct for surface radiation
# Calculate kD



#Enter computer number  1=Paul Desktop, 2=Paul MacBook, 3=FLAMe Book
compnum=c(1)
{if(compnum==1){
  dir=c("B:/Dropbox/FLAMe_Light/light_profiles")
  dir2=("B:/Dropbox/FLAMe_Light/processed_data")
}else if(compnum==2){
  dir=c("/Users/paulschramm/Dropbox/FLAMe_Light/light_profiles")
  dir2=("/Users/paulschramm/Dropbox/FLAMe_Light/processed_data")
} else if(compnum==3){
  dir=c("E:/Dropbox/FLAMe_Light/light_profiles")
  dir2=("E:/Dropbox/FLAMe_Light/processed_data")
} else{
  print("Please Enter Computer Number")
  dir=c("")
}
}

#Get File names of light profiles
{setwd(dir)
  files=list.files(dir)
  files=gsub("\\..*","",files)
}

#Get data from FLAMe chem and light profile names
{setwd(dir2)
  key=read.csv("lightprofiles_samplenum.csv",header=TRUE)
  chem=read.csv("flame_samples",header=TRUE)
  data=merge(key,chem,by.x=c("Sample.Number"))}

#Import light profiles into list of dataframes and rename
{setwd(dir)
lp=lapply(files, read.csv,header = FALSE)
names(lp)=files
lapply(lp, setNames, nm =c("prof_uva","prof_uvb","prof_par","prof_depth","prof_temp","surf_par","surf_uv"))
}


#Split up light profiles



