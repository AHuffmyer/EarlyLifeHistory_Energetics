# #Set up workspace
getwd() #Display the current working directory
# #If necessary, change the path below to the directory where the data files are stored. "." means current directory. On Windows use a forward slash / instead of the usual \.
workingDir = ".";
setwd(WGCNA_dev);
library(WGCNA) #Load the WGCNA package
options(stringsAsFactors = FALSE) #The following setting is important, do not omit.
enableWGCNAThreads() #Allow multi-threading within WGCNA. 
# 
# #Load the data saved in the first part
adjTOM <- load(file="datExpr.RData")
adjTOM
# 
# #Run analysis
softPower=5 #Set softPower to 5
adjacency=adjacency(datExpr, power=softPower,type="signed") #Calculate adjacency
TOM= TOMsimilarity(adjacency,TOMType = "signed") #Translate adjacency into topological overlap matrix
dissTOM= 1-TOM #Calculate dissimilarity in TOM
save(adjacency, TOM, dissTOM, file = "../adjTOM.RData") #Save to bluewaves dir
save(dissTOM, file = "../dissTOM.RData") #Save to load into RStudio