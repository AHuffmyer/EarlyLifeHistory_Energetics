#Load libraries
library(tidyverse)

#Load Mcap gene gff
Mcap.gff <- read.csv(file="Data/Mcap.GFFannotation.gff", header=FALSE, sep="\t") 

#rename columns
colnames(Mcap.gff) <- c("scaffold", "Gene.Predict", "id", "gene.start","gene.stop", "pos1", "pos2","pos3", "gene")

#remove excess information from GeMoMa so it matches AUGUSTUS
Mcap.gff$gene <- gsub("_cds[0123456789]*;", ".t1;", Mcap.gff$gene) #change the second part of the GeMoMa genes from cds11 to t.1 to match Augustus
Mcap.gff$gene <-sub("(;[^;]+);.*", "\\1", Mcap.gff$gene) #remove everything after the second ; in the gene column
Mcap.gff$gene <- gsub("Parent=", "  gene_id ", Mcap.gff$gene) #remove ID= from GeMoMa genes

#If id ==CDS replace ID= with transcript_id, else replace with nothing
Mcap.gff <- Mcap.gff %>% 
  mutate(gene = ifelse(Gene.Predict %in% c("GeMoMa") & 
                         id == "CDS" ,  
                       gsub("ID=", "transcript_id ", gene), gsub("", "", gene)))

#If id ==intron replace ID= with transcript_id, else replace with nothing
Mcap.gff <- Mcap.gff %>% 
  mutate(gene = ifelse(Gene.Predict %in% c("GeMoMa") & 
                         id == "intron" ,  
                       gsub("ID=", "transcript_id ", gene), gsub("ID=", "", gene)))

#If id ==gene remove everything after the ; else replace with nothing
Mcap.gff <- Mcap.gff %>% 
  mutate(gene = ifelse(Gene.Predict %in% c("GeMoMa") & 
                         id == "gene" ,  
                       gsub(";.*", "", gene), gsub("ID=", "", gene)))

# sub to add quotes around the transcript name
Mcap.gff$gene <- gsub("transcript_id ", "transcript_id \"", Mcap.gff$gene) 
Mcap.gff$gene <- gsub(";", "\";", Mcap.gff$gene) 

#add quotes before the gene_id
Mcap.gff$gene <- gsub("gene_id ", "gene_id \"", Mcap.gff$gene) 

#If id ==CDS add "; at the end else replace with nothing
Mcap.gff <- Mcap.gff %>% 
  mutate(gene = ifelse(id == "CDS" ,  
                         paste0(gene, "\";"), paste0(gene, "")))

#If id ==CDS add "; at the end else replace with nothing
Mcap.gff <- Mcap.gff %>% 
  mutate(gene = ifelse(id == "intron" ,  
                       paste0(gene, "\";"), paste0(gene, "")))

#save file
write.table(Mcap.gff, file="Data/Mcap.GFFannotation.fixed.gff", sep="\t", 
            col.names = FALSE, row.names=FALSE, quote=FALSE)