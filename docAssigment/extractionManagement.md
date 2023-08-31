Example of applications of document treatment for preparing the
extraction phase
================
Marius Bottin
2023-08-22

``` r
load("../../screening/fullTextScreening/acceptedFinal.RData")
AcceptedFinal<-unique(AcceptedFinal)
load("../../screening/fullTextScreening/FTS.RData")
source("./docAssignment_functions.R")
```

    ## Loading required package: reticulate

``` r
RT<-reviewTable(FTS)
RT_ok<-RT[rownames(RT)%in%AcceptedFinal,]
nbDocFTS<-colSums(RT_ok[,FTS$description$people])
nbDocFTS<-nbDocFTS[order(nbDocFTS)]
prioridad<-lapply(FTS$description$people,function(x)return(character(0L)))
names(prioridad)<-FTS$description$people
prioridad$Ana<- c("Aksel_Stenberdt2023","Aksut2016","Arya2016","Baker2013","Le2019", "Lambert2012", "Gold2015", "Monroe2016", "Salas_Rueda2021", "Hugel2022")
prioridad$Ana<-prioridad$Ana[prioridad$Ana%in%AcceptedFinal]
nbToGive<-c(Ana=45,Marius=NA,Benjamin=15,Sara=15,JuanGabriel=15,Luisa=15,Sergio=15)
(nbToGive["Marius"]<-length(AcceptedFinal)-sum(nbToGive,na.rm = T))
```

    ## [1] 32

``` r
for (i in 1:length(nbDocFTS))
{
  person<-names(nbDocFTS)[i]
  alreadyIn<-length(prioridad[[person]])
  toGive<-nbToGive[person]
  docPotential<-sum(RT_ok[!rownames(RT_ok)%in%unlist(prioridad),person])
  nb<-min(c(docPotential,toGive))-alreadyIn
  rt_potential<-RT_ok[as.logical(RT_ok[,person])&!rownames(RT_ok)%in%unlist(prioridad),]
  rt_potential<-rt_potential[order(rt_potential$Ana,rt_potential$Marius,rt_potential$Sergio,rt_potential$Luisa,method="radix",decreasing=T),]
  prioridad[[person]]<-c(prioridad[[person]],rownames(rt_potential)[1:nb])
}
AcceptedFinal[!AcceptedFinal%in%unlist(prioridad)]
```

    ##  [1] "Bodzin2014"        "Cibik2022"         "Harker_Schuch2013"
    ##  [4] "Kabir2015"         "Kern2017"          "Lambert2013"      
    ##  [7] "Lozano2022"        "McNeill2012"       "Muller2021a"      
    ## [10] "Nussbaum2015"      "Pruneau2003"       "Pruneau2006"      
    ## [13] "Roscoe2013"        "Ruboon2012"        "Silva2021"        
    ## [16] "Sumrall2021"       "Sundberg2013"      "Taylor2020"       
    ## [19] "Trott2020b"        "Veijalainen2013"   "Ratinen2013"      
    ## [22] "Schuster2018"

``` r
nbToGive<-nbToGive[names(prioridad)]
stillToGive<-nbToGive-sapply(prioridad,length)
attrib<-prioridad
for(i in 1:length(stillToGive))
{
  if(stillToGive[i]==0){next}
  person<-names(stillToGive)[i]
  docsConcerned<-AcceptedFinal[!AcceptedFinal%in%unlist(attrib)]
  attrib[[person]]<-c(attrib[[person]],docsConcerned[1:stillToGive[i]])
}
docExtract<-lapply(attrib,function(x)na.omit(x))
```

``` r
save(docExtract,file="../../extraction/docExtract.RData")
```

``` r
createDirPdf<-function(name,listAbbrev,rootDir,pdfDir)
{
  DIR<-paste0(rootDir,"/",name)
  if(dir.exists(DIR))
  {
    unlink(DIR,recursive=T)
  }
  dir.create(paste0(rootDir,"/",name))
  lapply(listAbbrev,function(x){
    system(paste0("ln ",pdfDir,"/",x,".pdf ",DIR))
  })
}
for(i in 1:length(docExtract)){
  createDirPdf(names(docExtract)[i],docExtract[[i]],"../../extraction/","../../PDF_included_total/")
}
```
