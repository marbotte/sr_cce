stopifnot(require(stringdist))

risInternalDuplicate <- function(extractedRis,levelDiff=0.05, priority=c("JOUR","CHAP"))
{
  AcceptedDupli<-DupliToCheck<-data.frame()
  tabFields <- extractFields(extractedRis = extractedRis,c("DO","TI","PY","AU","TY"))
  tabFields$title_simp <- tolower(gsub("[[:space:]]+"," ",gsub("[^A-Za-z0-9 ]","",tabFields$TI,perl = T), perl=T))
  #Searching duplicated DOI
  tabFields_do <- tabFields[!is.na(tabFields$DO)&tabFields$TY!="CHAP",]
  do_d <- duplicated(tabFields_do$DO)
  doDupli<-unique(tabFields_do[do_d,"DO"])
  toTest <- lapply(doDupli,function(x,tab)tab[tab$DO==x,],tab=tabFields_do)
  tested <- lapply(toTest,function(x){
    titles <- x$title_simp
    names(titles)<-x$id
    stringdist::stringdistmatrix(titles)/min(nchar(titles))
  })
  existDiff <- sapply(tested,function(x)max(x)>0)
  diffSup <- sapply(tested,function(x,lev)max(x)>lev,lev=levelDiff)
  if(any(existDiff&!diffSup))
  {sapply(toTest[existDiff&!diffSup],function(x)warning("\nRecords: ",paste(x$id,collapse=","),"\nhave the same DOI (",unique(x$DO),") but have SLIGHT differences in their titles:\n",paste(x$TI,collapse="\n"),"\n\nthey will be considered as duplicates\n"))}
  if(any(diffSup))
  {sapply(toTest[diffSup],function(x)warning("\nRecords: ",paste(x$id,collapse=","),"\nhave the same DOI (",unique(x$DO),") but have LARGE differences in their titles:\n",paste(x$TI,collapse="\n"),"\n\nThey will NOT be considered as duplicates\n"))}
  AcceptedDupli<-rbind(AcceptedDupli,Reduce(rbind,lapply(toTest[!existDiff|!diffSup],function(x,p){
      tab<-x[order(match(x$TY,p)),]
      data.frame(step="doi",ref=tab$id[1],toSupp=tab$id[2:nrow(x)])
    },p=priority)))
  DupliToCheck<-rbind(DupliToCheck,Reduce(rbind,lapply(toTest[diffSup],function(x)data.frame(step="doi",ref=x$id[1],toSupp=x$id[2:nrow(x)]))))
  # Searching duplicated titles and years (max difference:1) 
  # (both either do not have DOI or are chapters)
  tabFields_tiye <- tabFields[is.na(tabFields$DO)|tabFields$TY=="CHAP",]
  intern_tiye_dist <- stringdist::stringdistmatrix(tabFields_tiye$title_simp)
  cb1<- cb2 <- t(combn(1:length(tabFields_tiye$title_simp),2,c))
  colnames(cb1)<-c("row","col")
  colnames(cb2)<-c("col","row")
  cb<-rbind(cb1[,c("row","col")],cb2[,c("row","col")])
  minChar_tiye_mat<-matrix(NA,ncol=nrow(tabFields_tiye),nrow=nrow(tabFields_tiye))
  minChar_tiye_mat[cb]<-rep(combn(nchar(tabFields_tiye$title_simp),2,min),2)
  int_tiye_inf <- which((as.matrix(intern_tiye_dist)/minChar_tiye_mat)<levelDiff,arr.ind=T)
  int_tiye_inf<-(int_tiye_inf[int_tiye_inf[,2]<int_tiye_inf[,1],])
  if("integer"%in%class(int_tiye_inf))
  {toTest<-list(tabFields_tiye[c(int_tiye_inf["row"],int_tiye_inf["col"]),])}else
  {toTest<-apply(int_tiye_inf,1,function(x,i)i[c(x[1],x[2]),],i=tabFields_tiye)}
  diff_Ymax1 <- sapply(toTest,function(x)abs(as.numeric(x[1,"PY"])-as.numeric(x[2,"PY"]))<=1|any(is.na(x[,"PY"])))
  sameType <- sapply(toTest,function(x)length(unique(x$TY))==1)
  sameAuth <- sapply(toTest,function(x)length(unique(x$AU))==1)
  if(any(diff_Ymax1&(!sameAuth|!sameType)))
  {
    {sapply(toTest[diff_Ymax1&(!sameAuth|!sameType)],function(x)warning("\nRecords: ",paste(x$id,collapse=","),"\nhave comparable titles and pulication years \n(",paste(unique(x$TI),collapse="\n"),")\n but have differences in their authors and/or types:\n\nNote that they will be considered as duplicates\n"))}
  }
  if(any(!diff_Ymax1))
  {
    {sapply(toTest[!diff_Ymax1],function(x)warning("\nRecords: ",paste(x$id,collapse=","),"\nhave comparable titles (",paste(unique(x$TI),collapse="\n"),") but have a difference of more than one publication year!\n\nNote that they WONT be considered as duplicates\n"))}
  }
  AcceptedDupli<-rbind(AcceptedDupli,Reduce(rbind,lapply(toTest[diff_Ymax1],function(x,p,a)
    {
      tab<-x[order(match(x$TY,p),!x$id%in%a),]
      return(data.frame(step="ti_ye_noDoi",ref=tab$id[1],toSupp=tab$id[2:nrow(x)]))
    },p=priority,a=AcceptedDupli$ref)))
  DupliToCheck<-rbind(DupliToCheck,Reduce(rbind,lapply(toTest[!diff_Ymax1],function(x,p)
    {
      tab<-x[order(match(x$TY,p)),]
      return(data.frame(step="ti_ye_noDoi",ref=tab$id[1],toSupp=tab$id[2:nrow(x)]))
    },p=priority)))
 # Searching duplicated titles and years (max difference:1) 
 # (one of them do not have DOI or is a chapter)
  tiye_do_dist<- stringdist::stringdistmatrix(tabFields_tiye$title_simp,tabFields_do$title_simp)
  tiye_nchar<-nchar(tabFields_tiye$title_simp)
  do_nchar<-nchar(tabFields_do$title_simp)
  tiye_do_inf<-NULL
  for(i in 1:nrow(tiye_do_dist)){
    for(j in 1:ncol(tiye_do_dist)){
      if((tiye_do_dist[i,j]/min(c(tiye_nchar[i],do_nchar[j])))<levelDiff)
      {tiye_do_inf<-rbind(tiye_do_inf,matrix(c(i,j),ncol=2,dimnames=list(NA,c("row","col"))))}
    }
  }
  if(!is.null(tiye_do_inf)){
    toTest<-apply(tiye_do_inf,1,function(x,t1,t2)rbind(t1[x[1],],t2[x[2],]), t1=tabFields_tiye,t2=tabFields_do)
    diff_Ymax1 <- sapply(toTest,function(x)abs(as.numeric(x[1,"PY"])-as.numeric(x[2,"PY"]))<=1|any(is.na(x[,"PY"])))
    sameType <- sapply(toTest,function(x)length(unique(x$TY))==1)
    sameAuth <- sapply(toTest,function(x)length(unique(x$AU))==1)
    if(any(diff_Ymax1&(!sameAuth|!sameType)))
    {
      {sapply(toTest[diff_Ymax1&(!sameAuth|!sameType)],function(x)warning("\nRecords: ",paste(x$id,collapse=","),"\nhave comparable titles and pulication years \n(",paste(unique(x$TI),collapse="\n"),")\n but have differences in their authors and/or types:\n\nNote that they will be considered as duplicates\n"))}
    }
    if(any(!diff_Ymax1))
    {
      {sapply(toTest[!diff_Ymax1],function(x)warning("\nRecords: ",paste(x$id,collapse=","),"\nhave comparable titles (",paste(unique(x$TI),collapse="\n"),") but have a difference of more than one publication year!\n\nNote that they WONT be considered as duplicates\n"))}
    }
    AcceptedDupli<-rbind(AcceptedDupli,Reduce(rbind,lapply(toTest[diff_Ymax1],function(x,p)
      {
        tab<-x[order(match(x$TY,p)),]
        return(data.frame(step="ti_ye_1Doi",ref=tab$id[1],toSupp=tab$id[2:nrow(x)]))
      },p=priority)))
    DupliToCheck<-rbind(DupliToCheck,Reduce(rbind,lapply(toTest[!diff_Ymax1],function(x,p)
      {
        tab<-x[order(match(x$TY,p)),]
        return(data.frame(step="ti_ye_1Doi",ref=tab$id[1],toSupp=tab$id[2:nrow(x)]))
      },p=priority)))
  }
  # Checking that we dont suppress a document which is the reference a couple of duplicates
  # If documents are cited more than once in AcceptedDupli, we need to make groups
  nbSeen<-table(c(unique(AcceptedDupli$ref),AcceptedDupli$toSupp))
  if(any(nbSeen>1)){
    gps=data.frame(gp=1,id=c(AcceptedDupli[1,"ref"],AcceptedDupli[1,"toSupp"]))
      for(i in 2:nrow(AcceptedDupli)){
        if(!AcceptedDupli$ref[i]%in%gps$id & !AcceptedDupli$toSupp[i]%in%gps$id)
          gps<-rbind(gps,data.frame(gp=max(gps$gp)+1,id=c(AcceptedDupli[i,"ref"],AcceptedDupli[i,"toSupp"])))
        if(AcceptedDupli$ref[i]%in%gps$id & AcceptedDupli$toSupp[i]%in%gps$id){
          gpAlready<-gps$gp[gps$id==AcceptedDupli$ref[i] | gps$id==AcceptedDupli$toSupp[i]]
          gp<-min(gpAlready)
          gps$gp[gps$gp%in%gpAlready]<-gp
        }
        if(AcceptedDupli$ref[i]%in%gps$id & !AcceptedDupli$toSupp[i]%in%gps$id){
          gp<-gps$gp[gps$id==AcceptedDupli$ref[i]]
          gps<-rbind(gps,data.frame(gp=gp,id=c(AcceptedDupli[i,"toSupp"])))
        }
        if(!AcceptedDupli$ref[i]%in%gps$id & AcceptedDupli$toSupp[i]%in%gps$id){
          gp<-gps$gp[gps$id==AcceptedDupli$toSupp[i]]
          gps<-rbind(gps,data.frame(gp=gp,id=c(AcceptedDupli[i,"ref"])))
        }
      
      }
    gps<-gps[order(gps$gp),]
    gpList<-tapply(gps$id,gps$gp,function(x,t)t[x,],t=tabFields)
    nbRefGp<-sapply(gpList,nrow)
    AD_gp<-gps$gp[match(AcceptedDupli$ref,gps$id)]
    AcceptedDupli<-AcceptedDupli[nbRefGp[as.character(AD_gp)]==2,]
    AcceptedDupli<-rbind(AcceptedDupli,Reduce(rbind,lapply(gpList[nbRefGp>2],function(x,p){
      tab<-x[order(match(x,p)),]
      return(data.frame(step="reorganization",ref=tab$id[1],toSupp=tab$id[2:nrow(x)]))
    },p=priority)))
  }
  return(list(tabInfo= tabFields, accepted_dupes=AcceptedDupli, to_check_dupes=DupliToCheck, toSupp=AcceptedDupli$toSupp))
}

compareRisDuplicate<-function(risToFilter, risReference)
{
  rf_fieldTab<-extractFields(extractedRis = risToFilter,c("DO","TI","PY","AU","TY"))
  rr_fieldTab<-extractFields(extractedRis = risReference,c("DO","TI","PY","AU","TY"))
  rf_do_fieldTab<-NA
}

