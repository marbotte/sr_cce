ksource <- function(x, ...) {
  library(knitr)
  source(purl(x, output = tempfile()), ...)
}

# SankeyDiagram1 ----
ksource("results_graphs_number.Rmd")

require(networkD3)
table(extract$Categories.type.of.intervention)

tf_outcomeT<-which(tf_outcomes[,1:6],arr.ind=T)
df_outcomeT<-data.frame(
  idRow=rownames(extract)[tf_outcomeT[,1]],
  outcome=factor(colnames(tf_outcomes[,1:6])[tf_outcomeT[,2]]),
  didItWork=factor(didItWork_outcomes[tf_outcomeT])
  )
nodesPedagogicalTools<-
  data.frame(
    name=levels(extract$Categories.type.of.intervention),
    group="node"
    #group=levels(extract$Categories.type.of.intervention)
    #group="Pedagogical tools",
    #valueNode=as.integer(table(extract$Categories.type.of.intervention))
  )
nodesOutcome<-
  data.frame(
    name=levels(df_outcomeT$outcome),
    group="node"
    #group=levels(df_outcomeT$outcome)
    #group="outcome",
    #valueNode=as.integer(table(df_outcomeT$outcome))
  )
nodesDIW<-
  data.frame(
    name=levels(df_outcomeT$didItWork),
    group="node"
    #group=levels(df_outcomeT$didItWork)
    #group="Did it work?",
    #valueNode=as.integer(table(df_outcomeT$didItWork))
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
group="l_Yes"
),

data.frame(
source=nodes$ID[match(rownames(linkPedagTools_OutcomeMultiT[,,"No"])[w_linkPedagTools_Outcome_No[,"row"]],nodes$name)],
target=nodes$ID[match(colnames(linkPedagTools_OutcomeMultiT[,,"No"])[w_linkPedagTools_Outcome_No[,"col"]],nodes$name)],
value=linkPedagTools_OutcomeMultiT[,,"No"][w_linkPedagTools_Outcome_No],
group="l_No"
),

data.frame(
source=nodes$ID[match(rownames(linkPedagTools_OutcomeMultiT[,,"Unclear"])[w_linkPedagTools_Outcome_Unclear[,"row"]],nodes$name)],
target=nodes$ID[match(colnames(linkPedagTools_OutcomeMultiT[,,"Unclear"])[w_linkPedagTools_Outcome_Unclear[,"col"]],nodes$name)],
value=linkPedagTools_OutcomeMultiT[,,"Unclear"][w_linkPedagTools_Outcome_Unclear],
group="l_Unclear"
),

data.frame(
source=nodes$ID[match(rownames(linkOutcomeDidItWork)[w_linkOutcomeDidItWork[,"row"]],nodes$name)],
target=nodes$ID[match(colnames(linkOutcomeDidItWork)[w_linkOutcomeDidItWork[,"col"]],nodes$name)],
value=linkOutcomeDidItWork[w_linkOutcomeDidItWork],
group=paste0("l_",colnames(linkOutcomeDidItWork)[w_linkOutcomeDidItWork[,"col"]])
)
)
colorCode<- 
  'd3.scaleOrdinal() .domain(["node","l_Yes", "l_No", "l_Unclear"]).range(["grey","steelblue", "red","orange"])'


#colorCode<- 
#  'd3.scaleOrdinal() .domain(["Yes", "No", "Unclear"]) .range(["steelblue", "red","orange"])'



nodes<-nodes[2:3]
SN1<-sankeyNetwork(Links = links, Nodes = nodes, Source = "source", Target = "target", Value = "value", NodeID = "name",NodeGroup = "group", LinkGroup = "group", fontSize = 12, nodeWidth = 30, colourScale = colorCode)
saveNetwork(SN1,"SN1.html", selfcontained = T)

SN1
SN1


# Sankey diagram 2: theoretical framework
# I will try something extensive:
# - populations
# - theoretical framework
# - outcomes
# - did it work
# - (mitigacion/adaptación)
# - (controversy)


popTot
extract$`Theoretical.framework.(big.categories)`
extract$`Final.mitigation/adaptation`
extract$controv_clean
df_outcomeT

# Table creation ----
# We create 2 tables, one considering only one value for each row, and one considering one value by outcome


byRow<-data.frame(
  idRow=rownames(extract),
  population=popTot,
  pop=pop,
  TheoFra=extract$`Theoretical.framework.(big.categories)`,
  mitAda=extract$`Final.mitigation/adaptation`,
  controv=ifelse(extract$controv_clean=="Yes","Controversy","No Controversy")
)
byOutcome<-df_outcomeT

require(sqldf)
byOutcomeTot<-na.omit(sqldf(
  "SELECT idRow,population,TheoFra,mitAda,controv,outcome,didItWork
  FROM byRow
  LEFT JOIN byOutcome USING (idRow)
  ORDER BY CAST(idRow as int)
  ",drv = "SQLite"))
byRowDIW<-sqldf(
  "SELECT idRow,population,TheoFra,mitAda,controv,
    CASE 
      WHEN GROUP_CONCAT(DISTINCT didItWork) LIKE '%,%' THEN 'Unclear'
      ELSE GROUP_CONCAT(DISTINCT didItWork)
    END didItWork
  FROM byRow
  LEFT JOIN byOutcome USING (idRow)
  GROUP BY idRow,population,TheoFra,mitAda,controv
  ORDER BY CAST(idRow as int)",
  drv = "SQLite")


# SN2 Complete by outcome value ----
#byOutcomeTot[which(is.na(byOutcomeTot),arr.ind = T)]<-"No information"
nodes<-sqldf(
  "
  WITH a AS(
  SELECT DISTINCT population name, 'node' gp_node, 1 AS variable
  FROM byOutcomeTot
  UNION
  SELECT DISTINCT mitAda name, 'node' gp_node, 2 AS variable
  FROM byOutcomeTot
  UNION
  SELECT DISTINCT controv name, 'node' gp_node,3 AS variable
  FROM byOutcomeTot
  UNION
  SELECT DISTINCT TheoFra name, 'node' gp_node,4 AS variable
  FROM byOutcomeTot
  UNION
  SELECT DISTINCT outcome name, 'node' gp_node,5 AS variable
  FROM byOutcomeTot
  UNION
  SELECT DISTINCT didItWork name, 'node' gp_node, 6 AS variable
  FROM byOutcomeTot
  )
  SELECT name,gp_node
  FROM a
  ORDER BY variable
  "
)
nodes<-data.frame(ID=0:(nrow(nodes)-1),
                 nodes)
links<-sqldf(
  "
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Yes' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON population=n1.name
  JOIN nodes n2 ON mitAda=n2.name
  WHERE didItWork='Yes'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'No' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON population=n1.name
  JOIN nodes n2 ON mitAda=n2.name
  WHERE didItWork='No'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Unclear' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON population=n1.name
  JOIN nodes n2 ON mitAda=n2.name
  WHERE didItWork='Unclear'
  GROUP BY n1.ID,n2.ID
  
  UNION
  
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Yes' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON mitAda=n1.name
  JOIN nodes n2 ON controv=n2.name
  WHERE didItWork='Yes'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'No' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON mitAda=n1.name
  JOIN nodes n2 ON controv=n2.name
  WHERE didItWork='No'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Unclear' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON mitAda=n1.name
  JOIN nodes n2 ON controv=n2.name
  WHERE didItWork='Unclear'
  GROUP BY n1.ID,n2.ID
  
  UNION
    
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Yes' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON controv=n1.name
  JOIN nodes n2 ON TheoFra=n2.name
  WHERE didItWork='Yes'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'No' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON controv=n1.name
  JOIN nodes n2 ON TheoFra=n2.name
  WHERE didItWork='No'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Unclear' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON controv=n1.name
  JOIN nodes n2 ON TheoFra=n2.name
  WHERE didItWork='Unclear'
  GROUP BY n1.ID,n2.ID
  
  UNION
  
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Yes' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON theoFra=n1.name
  JOIN nodes n2 ON outcome=n2.name
  WHERE didItWork='Yes'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'No' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON theoFra=n1.name
  JOIN nodes n2 ON outcome=n2.name
  WHERE didItWork='No'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Unclear' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON theoFra=n1.name
  JOIN nodes n2 ON outcome=n2.name
  WHERE didItWork='Unclear'
  GROUP BY n1.ID,n2.ID
 
  UNION
   
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Yes' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON outcome=n1.name
  JOIN nodes n2 ON didItWork=n2.name
  WHERE didItWork='Yes'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'No' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON outcome=n1.name
  JOIN nodes n2 ON didItWork=n2.name
  WHERE didItWork='No'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Unclear' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON outcome=n1.name
  JOIN nodes n2 ON didItWork=n2.name
  WHERE didItWork='Unclear'
  GROUP BY n1.ID,n2.ID
  ")

colorCode<-
  'd3.scaleOrdinal() .domain(["node","Yes", "No", "Unclear"]).range(["grey","steelblue", "red","orange"])'
sankeyNetwork(Links = links, Nodes = nodes, Source = "sourceNode", Target = "targetNode", Value = "val", NodeID = "name",NodeGroup = "gp_node", LinkGroup = "l_group", fontSize = 14, nodeWidth = 30, colourScale = colorCode, sinksRight = F)

# Sankey diagram 3: theoretical framework -----
# I will try something extensive:
# - populations
# - theoretical framework
# - outcomes
# - did it work

# Complete by outcome value
#byOutcomeTot[which(is.na(byOutcomeTot),arr.ind = T)]<-"No information"
nodes<-sqldf(
  "
  WITH a AS(
  SELECT DISTINCT population name, 'node' gp_node, 1 AS variable
  FROM byOutcomeTot
  UNION
  SELECT DISTINCT TheoFra name, 'node' gp_node,4 AS variable
  FROM byOutcomeTot
  UNION
  SELECT DISTINCT outcome name, 'node' gp_node,5 AS variable
  FROM byOutcomeTot
  UNION
  SELECT DISTINCT didItWork name, 'node' gp_node, 6 AS variable
  FROM byOutcomeTot
  )
  SELECT name,gp_node
  FROM a
  ORDER BY variable
  "
)
nodes<-data.frame(ID=0:(nrow(nodes)-1),
                 nodes)
links<-sqldf(
  "
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Yes' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON population=n1.name
  JOIN nodes n2 ON TheoFra=n2.name
  WHERE didItWork='Yes'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'No' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON population=n1.name
  JOIN nodes n2 ON TheoFra=n2.name
  WHERE didItWork='No'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Unclear' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON population=n1.name
  JOIN nodes n2 ON TheoFra=n2.name
  WHERE didItWork='Unclear'
  GROUP BY n1.ID,n2.ID
  
  UNION
  
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Yes' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON theoFra=n1.name
  JOIN nodes n2 ON outcome=n2.name
  WHERE didItWork='Yes'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'No' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON theoFra=n1.name
  JOIN nodes n2 ON outcome=n2.name
  WHERE didItWork='No'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Unclear' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON theoFra=n1.name
  JOIN nodes n2 ON outcome=n2.name
  WHERE didItWork='Unclear'
  GROUP BY n1.ID,n2.ID
 
  UNION
   
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Yes' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON outcome=n1.name
  JOIN nodes n2 ON didItWork=n2.name
  WHERE didItWork='Yes'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'No' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON outcome=n1.name
  JOIN nodes n2 ON didItWork=n2.name
  WHERE didItWork='No'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Unclear' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON outcome=n1.name
  JOIN nodes n2 ON didItWork=n2.name
  WHERE didItWork='Unclear'
  GROUP BY n1.ID,n2.ID
  ")

colorCode<-
  'd3.scaleOrdinal() .domain(["node","Yes", "No", "Unclear"]).range(["grey","steelblue", "red","orange"])'
SN3<-sankeyNetwork(Links = links, Nodes = nodes, Source = "sourceNode", Target = "targetNode", Value = "val", NodeID = "name",NodeGroup = "gp_node", LinkGroup = "l_group", fontSize = 14, nodeWidth = 30, colourScale = colorCode, sinksRight = F)
saveNetwork(SN3,"SN3.html", selfcontained = T)
SN3

#SN4 separate ages ----

## New table ----

byOutcomeTot<-na.omit(sqldf(
  "SELECT idRow,population,pop,ageCat,TheoFra,mitAda,controv,outcome,didItWork
  FROM byRow
  LEFT JOIN byOutcome USING (idRow)
  JOIN AgeByRow USING (idRow)
  ORDER BY CAST(idRow as int)
  ",drv = "SQLite"))

## nodes and links ----

nodes<-sqldf(
  "
  WITH a AS(
  SELECT DISTINCT pop name, 'node' gp_node, 1 AS variable
  FROM byOutcomeTot
  UNION
  SELECT DISTINCT ageCat name, 'node' gp_node, 2 AS variable
  FROM byOutcomeTot
  UNION
  SELECT DISTINCT TheoFra name, 'node' gp_node,4 AS variable
  FROM byOutcomeTot
  UNION
  SELECT DISTINCT outcome name, 'node' gp_node,5 AS variable
  FROM byOutcomeTot
  UNION
  SELECT DISTINCT didItWork name, 'node' gp_node, 6 AS variable
  FROM byOutcomeTot
  )
  SELECT name,gp_node
  FROM a
  ORDER BY variable
  "
)
nodes<-data.frame(ID=0:(nrow(nodes)-1),
                 nodes)
links<-sqldf(
  "
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Yes' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON pop=n1.name
  JOIN nodes n2 ON ageCat=n2.name
  WHERE didItWork='Yes' AND pop='Students'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'No' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON pop=n1.name
  JOIN nodes n2 ON ageCat=n2.name
  WHERE didItWork='No' AND pop='Students'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Unclear' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON pop=n1.name
  JOIN nodes n2 ON ageCat=n2.name
  WHERE didItWork='Unclear' AND pop='Students'
  GROUP BY n1.ID,n2.ID
  
  UNION
  
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Yes' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON pop=n1.name
  JOIN nodes n2 ON TheoFra=n2.name
  WHERE didItWork='Yes' AND pop!='Students'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'No' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON pop=n2.name
  JOIN nodes n2 ON TheoFra=n2.name
  WHERE didItWork='No' AND pop!='Students'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Unclear' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON pop=n1.name
  JOIN nodes n2 ON TheoFra=n2.name
  WHERE didItWork='Unclear' AND pop!='Students'
  GROUP BY n1.ID,n2.ID
  
  UNION
  
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Yes' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON ageCat=n1.name
  JOIN nodes n2 ON TheoFra=n2.name
  WHERE didItWork='Yes' AND pop='Students'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'No' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON ageCat=n1.name
  JOIN nodes n2 ON TheoFra=n2.name
  WHERE didItWork='No' AND pop='Students'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Unclear' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON ageCat=n1.name
  JOIN nodes n2 ON TheoFra=n2.name
  WHERE didItWork='Unclear' AND pop='Students'
  GROUP BY n1.ID,n2.ID
  
  UNION
  
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Yes' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON theoFra=n1.name
  JOIN nodes n2 ON outcome=n2.name
  WHERE didItWork='Yes'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'No' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON theoFra=n1.name
  JOIN nodes n2 ON outcome=n2.name
  WHERE didItWork='No'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Unclear' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON theoFra=n1.name
  JOIN nodes n2 ON outcome=n2.name
  WHERE didItWork='Unclear'
  GROUP BY n1.ID,n2.ID
 
  UNION
   
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Yes' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON outcome=n1.name
  JOIN nodes n2 ON didItWork=n2.name
  WHERE didItWork='Yes'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'No' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON outcome=n1.name
  JOIN nodes n2 ON didItWork=n2.name
  WHERE didItWork='No'
  GROUP BY n1.ID,n2.ID
  UNION
  SELECT n1.ID sourceNode, n2.ID targetNode,COUNT(DISTINCT idRow) val, 'Unclear' AS l_group
  FROM byOutcomeTot
  JOIN nodes n1 ON outcome=n1.name
  JOIN nodes n2 ON didItWork=n2.name
  WHERE didItWork='Unclear'
  GROUP BY n1.ID,n2.ID
  ")

colorCode<-
  'd3.scaleOrdinal() .domain(["node","Yes", "No", "Unclear"]).range(["grey","steelblue", "red","orange"])'
SN4<-sankeyNetwork(Links = links, Nodes = nodes, Source = "sourceNode", Target = "targetNode", Value = "val", NodeID = "name",NodeGroup = "gp_node", LinkGroup = "l_group", fontSize = 14, nodeWidth = 30, colourScale = colorCode, sinksRight = F)
saveNetwork(SN4,"SN4.html", selfcontained = T)
SN4

# Counts with the complete tables ----
sqldf(
  "
  WITH a AS(
  SELECT DISTINCT idRow,outcome
  FROM byOutcomeTot
  )
  SELECT count(*)
  FROM a
  ")


