
R version 3.3.1 (2016-06-21) -- "Bug in Your Hair"
Copyright (C) 2016 The R Foundation for Statistical Computing
Platform: i386-w64-mingw32/i386 (32-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Previously saved workspace restored]

> getwd()
[1] "C:/Users/IT/Documents"
> q()
> specdata
Error: object 'specdata' not found
> getwd()
[1] "C:/Users/IT/Desktop/coursera"
> specdata
Error: object 'specdata' not found
> getwd()
[1] "C:/Users/IT/Desktop/coursera/specdata"
> specdata
Error: object 'specdata' not found
> head(specdata)
Error in head(specdata) : object 'specdata' not found
> read.csv("specdata")
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
In file(file, "rt") :
  cannot open file 'specdata': No such file or directory
> data<-read.csv(paste(directory,"/",formatc(i,width=3,flag="0"),".csv",sep=""))
Error in paste(directory, "/", formatc(i, width = 3, flag = "0"), ".csv",  : 
  object 'directory' not found
> 
> temp = list.files(pattern="*.csv")
> for(i in 1:length(temp)) assign(temp[i],read.csv(temp[i])
+ 
Error: unexpected end of input
> getwd()
[1] "C:/Users/IT/Desktop/coursera/specdata"
> pollutantmean<-function(directory,pollutant,id=1:332){
+ filenames<-list.files(path=directory,pattern=".csv",fullnames=TRUE)
+ value<- numeric()
+ fot (i in id){
Error: unexpected 'in' in:
"value<- numeric()
fot (i in"
> for (i in id){
+ data<- read.csv(filenames[i])
+ value<-c(value,data([[pollutant]]))
Error: unexpected '[[' in:
"data<- read.csv(filenames[i])
value<-c(value,data([["
> value<-c(value,data[[pollutant]])}
Error: unexpected '}' in "value<-c(value,data[[pollutant]])}"
> value<-c(value,data[[pollutant]]))}
Error: unexpected ')' in "value<-c(value,data[[pollutant]]))"
> pollutantmean<-function(directory,pollutant,id=1:332){
+ filenames<-list.files(path=directory,pattern=".csv",fullnames=TRUE)
+ value<- numeric()
+ for (i in id){
+ data<- read.csv(filenames[i])
+ value<- c(value,data[[pollutant]])
+ }
+ mean(value,na.rm=TRUE)
+ }
> pollutantmean("C:/Users/IT/Desktop/coursera/specdata")
Error in list.files(path = directory, pattern = ".csv", fullnames = TRUE) : 
  unused argument (fullnames = TRUE)
> pollutantmean("C:/Users/IT/Desktop/coursera/specdata","sulfate")
Error in list.files(path = directory, pattern = ".csv", fullnames = TRUE) : 
  unused argument (fullnames = TRUE)
> pollutantmean("/Users/IT/Desktop/coursera/specdata","sulfate")
Error in list.files(path = directory, pattern = ".csv", fullnames = TRUE) : 
  unused argument (fullnames = TRUE)
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
