ksource <- function(x, ...) {
  library(knitr)
  source(purl(x, output = tempfile()), ...)
}

# SankeyDiagram1
ksource("extraction/results_graphs_number.Rmd")


table(extract$Categories.type.of.intervention)

tf_outcomeT<-which(tf_outcomes[,1:6],arr.ind=T)
df_outcomeT<-data.frame(
  id=rownames(extract)[tf_outcomeT[,1]],
  outcome=factor(colnames(tf_outcomes[,1:6])[tf_outcomeT[,2]]),
  didItWork=factor(didItWork_outcomes[tf_outcomeT])
  )
nodesPedagogicalTools<-
  data.frame(
    name=levels(extract$Categories.type.of.intervention),
    group="Pedagogical tools",
    valueNode=as.integer(table(extract$Categories.type.of.intervention))
  )
nodesOutcome<-
  data.frame(
    name=levels(df_outcomeT$outcome),
    group="outcome",
    valueNode=as.integer(table(df_outcomeT$outcome))
  )
nodesDIW<-
  data.frame(
    name=levels(df_outcomeT$didItWork),
    group="Did it work?",
    valueNode=as.integer(table(df_outcomeT$didItWork))
  )
nodes<-data.frame(
  ID=0:(nrow(nodesPedagogicalTools)+nrow(nodesOutcome)+nrow(nodesDIW)-1),
  rbind(nodesPedagogicalTools,nodesOutcome,nodesDIW)
)
linkPedagTools_Outcome<-as.matrix(table(extract[df_outcomeT$id,"Categories.type.of.intervention"],df_outcomeT$outcome))
w_linkPedagTools_Outcome<-which(linkPedagTools_Outcome>0,arr.ind=T)

linkOutcomeDidItWork<-table(df_outcomeT$outcome,df_outcomeT$didItWork)
w_linkOutcomeDidItWork<-which(linkOutcomeDidItWork>0,arr.ind=T)

links<-
rbind(
data.frame(
source=nodes$ID[match(rownames(linkPedagTools_Outcome)[w_linkPedagTools_Outcome[,"row"]],nodes$name)],
target=nodes$ID[match(colnames(linkPedagTools_Outcome)[w_linkPedagTools_Outcome[,"col"]],nodes$name)],
value=linkPedagTools_Outcome[w_linkPedagTools_Outcome]
),

data.frame(
source=nodes$ID[match(rownames(linkOutcomeDidItWork)[w_linkOutcomeDidItWork[,"row"]],nodes$name)],
target=nodes$ID[match(colnames(linkOutcomeDidItWork)[w_linkOutcomeDidItWork[,"col"]],nodes$name)],
value=linkOutcomeDidItWork[w_linkOutcomeDidItWork]
)
)

#DidItWorkAsgroup

linkPedagTools_OutcomeMultiT<-table(extract[df_outcomeT$id,"Categories.type.of.intervention"],df_outcomeT$outcome,df_outcomeT$didItWork)
w_linkPedagTools_Outcome_Yes<-which(as.matrix(linkPedagTools_OutcomeMultiT[,,"Yes"])>0,arr.ind=T)
w_linkPedagTools_Outcome_No<-which(as.matrix(linkPedagTools_OutcomeMultiT[,,"No"])>0,arr.ind=T)
w_linkPedagTools_Outcome_Unclear<-which(as.matrix(linkPedagTools_OutcomeMultiT[,,"Unclear"])>0,arr.ind=T)

linkOutcomeDidItWork<-table(df_outcomeT$outcome,df_outcomeT$didItWork)
w_linkOutcomeDidItWork<-which(linkOutcomeDidItWork>0,arr.ind=T)

links<-
rbind(
data.frame(
source=nodes$ID[match(rownames(linkPedagTools_OutcomeMultiT[,,"Yes"])[w_linkPedagTools_Outcome_Yes[,"row"]],nodes$name)],
target=nodes$ID[match(colnames(linkPedagTools_OutcomeMultiT[,,"Yes"])[w_linkPedagTools_Outcome_Yes[,"col"]],nodes$name)],
value=linkPedagTools_OutcomeMultiT[,,"Yes"][w_linkPedagTools_Outcome_Yes],
group="Yes"
),

data.frame(
source=nodes$ID[match(rownames(linkPedagTools_OutcomeMultiT[,,"No"])[w_linkPedagTools_Outcome_No[,"row"]],nodes$name)],
target=nodes$ID[match(colnames(linkPedagTools_OutcomeMultiT[,,"No"])[w_linkPedagTools_Outcome_No[,"col"]],nodes$name)],
value=linkPedagTools_OutcomeMultiT[,,"No"][w_linkPedagTools_Outcome_No],
group="No"
),

data.frame(
source=nodes$ID[match(rownames(linkPedagTools_OutcomeMultiT[,,"Unclear"])[w_linkPedagTools_Outcome_Unclear[,"row"]],nodes$name)],
target=nodes$ID[match(colnames(linkPedagTools_OutcomeMultiT[,,"Unclear"])[w_linkPedagTools_Outcome_Unclear[,"col"]],nodes$name)],
value=linkPedagTools_OutcomeMultiT[,,"Unclear"][w_linkPedagTools_Outcome_Unclear],
group="Unclear"
),

data.frame(
source=nodes$ID[match(rownames(linkOutcomeDidItWork)[w_linkOutcomeDidItWork[,"row"]],nodes$name)],
target=nodes$ID[match(colnames(linkOutcomeDidItWork)[w_linkOutcomeDidItWork[,"col"]],nodes$name)],
value=linkOutcomeDidItWork[w_linkOutcomeDidItWork],
group=colnames(linkOutcomeDidItWork)[w_linkOutcomeDidItWork[,"col"]]
)
)



SN1<-sankeyNetwork(Links = links, Nodes = nodes, Source = "source", Target = "target", Value = "value", NodeID = "name", LinkGroup = "group", fontSize = 12, nodeWidth = 30)
saveNetwork(SN1,"SN1.html", selfcontained = T)


