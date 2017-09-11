#Paul Schramm
#201-09-11

#workflow
  #Compare surface unit to light profiler


#Enter computer number  1=Paul Desktop, 2=Paul MacBook, 3=FLAMe Book
compnum=c(1)
{if(compnum==1){
  dir=c("B:/Dropbox/FLAMe_Light/tests")
  dir2=("B:/Dropbox/FLAMe_Light/processed_data")
}else if(compnum==2){
  dir=c("/Users/paulschramm/Dropbox/FLAMe_Light/tests")
  dir2=("/Users/paulschramm/Dropbox/FLAMe_Light/processed_data")
} else if(compnum==3){
  dir=c("E:/Dropbox/FLAMe_Light/tests")
  dir2=("E:/Dropbox/FLAMe_Light/processed_data")
} else{
  print("Please Enter Computer Number")
  dir=c("")
}
}


setwd(dir)
data=read.table("comparison_test_2017-07-14.txt",sep = ",")
names(data)=c("prof_uva","prof_uvb","prof_par","prof_depth","prof_temp","surf_par","surf_uv")

