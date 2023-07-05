# Create assignment project

#saveProj <- function(proj,nameFile)
#{
#  save(proj,file=paste(proj$description$dirProject,nameFile,sep="/"))
#}

createProj <- function(name, documents, people, nameFile, dirProject=".",nbReview_categ=c(default=2), priority=c("default") )
{
	if(!dir.exists(dirProject)){
	  dir.create(dirProject)
	}
	stopifnot(names(nbReview_categ)==names(documents))
	stopifnot(priority%in%names(documents))
	stopifnot(!paste0(nameFile,".RData")%in%dir(dirProject))
	proj<-list()
	proj$description<-list(name=name,documents=documents, people=people, nbReview_categ=nbReview_categ,priority=priority,dirProject=normalizePath(dirProject,mustWork=T))
	proj$assignments<-list()
	proj$results<-list()
	stopifnot(!name%in%ls(envir = parent.env(environment())))
	assign(name,proj,envir=parent.env(environment()))
	save(list=name,file=paste(proj$description$dirProject,nameFile,sep="/"))
	return(get(name,envir=parent.env(environment())))
}


reviewTable <- function(proj)
{
  if(length(proj$assignments))
  {
	nbReviews<-table(
	      factor(unlist(lapply(proj$assignments,function(x)x$documents)),levels=unlist(proj$description$documents)),
	      factor(rep(sapply(proj$assignments,function(x)x$person),sapply(proj$assignments,function(x)length(x$documents))),levels=proj$description$people))
  }else{
    nbReviews<-table(
    factor(NULL,levels=unlist(proj$description$documents)),
    factor(NULL,levels=proj$description$people))
  }
  res<-as.data.frame(apply(nbReviews,2,function(x)x,simplify = F))
  res$total<-rowSums(res)
  category<-rep(names(proj$description$documents),sapply(proj$description$documents,length))
  names(category)<-unlist(proj$description$documents)
  res$category <- category[rownames(res)]
  totalNeeded <- proj$description$nbReview_categ[match(res$category,names(proj$description$nbReview_categ))]
  res$nbMissing <- totalNeeded-res$total
  res$priority <- match(res$category,proj$description$priority)
  return(res)
}

calculateDocPriority <- function(proj, person, mode=c("default","newDoc"))
{
  mode<-match.arg(mode)
  stopifnot(person%in%proj$description$people)
	rt<-reviewTable(proj)
	rt<-rt[rt[,person]==0&rt$nbMissing>0,]
	if(nrow(rt)==0){stop(person," has already finished the reviews")}
	if(mode=="default")
	{return(rownames(rt)[order(rt$priority,rt$nbMissing,runif(nrow(rt)),decreasing=c(F,T,F))])}
	if(mode=="newDoc")
	{return(rownames(rt)[order(rt$total,rt$priority,runif(nrow(rt)),decreasing=c(F,F,F))])}
}


createAssigment_auto <- function(proj,nbDoc, person, modePriority=c("default","newDoc"),saveFile=T)
{
	stopifnot(person %in% proj$description$people)
  docP<-calculateDocPriority(proj,person,mode=modePriority)
  nbDoc<-min(c(nbDoc,length(docP)))
  proj$assignments[[length(proj$assignments)+1]]<-list(
    person=person,
    documents=docP[1:nbDoc],
    date=Sys.time()
  )
  if(saveFile){
    assign(proj$description$name,proj)
    save(list=proj$description$name,file=paste(proj$description$dirProject,paste0(proj$description$name,".RData"),sep="/"))
  }
  return(proj)
}

addManualAssignment <- function(proj,person,documents,dateAssign=NA,saveFile=T)
{
  stopifnot(person%in%proj$description$people)
  stopifnot(length(person)==1)
  stopifnot(documents%in%unlist(proj$description$documents))
  proj$assignments[[length(proj$assignments)+1]]<-list(
    person=person,
    documents=documents,
    date=ifelse(is.na(dateAssign),as.POSIXct(Sys.time()),as.POSIXct(dateAssign))
  )
  if(saveFile){
    assign(proj$description$name,proj)
    save(list=proj$description$name,file=paste(proj$description$dirProject,paste0(proj$description$name,".RData"),sep="/"))
  }
  return(proj)
}
  
require(reticulate)
source_python("./filterXlsx.py")

prepareDosAssignment <- function(proj,xlFile,pdfDir,sheetName,columnDocName,assignmentNumber=length(proj$assignments)){
  #assignment<-proj$assignments[[assignmentNumber]]
  assignmentName<-paste(paste0("assignment",assignmentNumber),proj$assignments[[assignmentNumber]]$person,format(as.POSIXct(proj$assignments[[assignmentNumber]]$date),format="%Y%m%d"),sep="_")
  pathDir<- paste(proj$description$dirProject,assignmentName,sep="/")
  if(dir.exists(pathDir)){stop("The directory already exists")}
  dir.create(pathDir)
  outputXl<-paste(pathDir,paste0(assignmentName,".xlsx"),sep="/")
  filterXlsx(xlFile,sheetName,columnDocName,proj$assignments[[assignmentNumber]]$documents,outputXl)
  docPdf<-paste(pdfDir,paste0(proj$assignments[[assignmentNumber]]$documents,".pdf"),sep="/")
  pdfExists<-sapply(docPdf,file.exists)
  if(any(!pdfExists))
  {
    warning("The following documents were not found:",proj$assignments[[assignmentNumber]]$documents[!pdfExists])
  }
  system(paste("ln",docPdf[pdfExists],paste0(pathDir,"/",proj$assignments[[assignmentNumber]]$documents[pdfExists],".pdf"),collapse=";"))
  return(pathDir)
}



		 



