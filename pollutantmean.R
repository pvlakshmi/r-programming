



> pollutantmean<-function(directory,pollutant,id=1:332){
+ filenames<-list.files(path=directory,pattern=".csv",full.names=TRUE)
+ value<- numeric()
+ for (i in id){
+ data<- read.csv(filenames[i])
+ value<- c(value,data[[pollutant]])
+ }
+ mean(value,na.rm=TRUE)
+ }
> pollutantmean("/Users/IT/Desktop/coursera/specdata","sulfate")
[1] 3.189369
> save.image("C:\\Users\\IT\\Desktop\\coursera\\pollutantmean.R")
> pollutantmean("/Users/IT/Desktop/coursera/specdata","nitrate")
[1] 1.702932
> 
