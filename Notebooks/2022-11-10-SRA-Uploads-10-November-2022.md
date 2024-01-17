---
layout: post
title: SRA Uploads 10 November 2022
date: '2022-11-10'
categories: Protocol Mcapitata_EarlyLifeHistory_2020
tags: Protocol Bioinformatics
---
This post details the NCBI Sequence Read Archive upload for Ariana Huffmyer's *Montipora capitata* 2020 early life history timeseries project.  

# Overview

The sequences uploaded today are from the *Montipora capitata* 2020 early life history time series project. Notebook posts on this project can [be found here](https://ahuffmyer.github.io/ASH_Putnam_Lab_Notebook/categoryview/#mcapitata-earlylifehistory-2020).  

Sequences will be uploaded for TagSeq (gene expression), ITS2 (Symbiodiniaceae amplicon), and 16S (bacterial amplicon) data types for each sample.  

This post details the process to upload these files following the [Putnam Lab SRA Upload Protocol](https://github.com/Putnam-Lab/Lab_Management/blob/master/Bioinformatics_%26_Coding/Data_Mangament/SRA-Upload_Protocol.md) and instructions from Emma Strand.  

## 1. BioProject  

I created a new submission on [NCBI Submission Portal](https://submit.ncbi.nlm.nih.gov/subs/bioproject/) for a new BioProject. 

- This project sample scope will be multispecies because we sampled from multiple samples of the same coral species with each data type containing multiple species (i.e., bacteria, symbionts, and coral host). We have 16S and ITS2 datasets and these will be selected as "host-associated" in a later step.     
- The target speces is *Montipora capitata*.  
- Release date selected as Nov 30 to allow time for edits, since this is my first submission.  
- The project title is "Montipora capitata ontogeny time series"  
- The project description is, "Time series sampling across ontogeny (i.e., embryos, larvae, and recruit stages) of the reef-building coral Montipora capitata and associated microbial symbionts collected from Kaneohe Bay, Oahu, Hawaii. Data includes TagSeq (gene expression), 16S (bacterial amplicon), and ITS2 (Symbiodiniaceae amplicon) sequences."  
- Grants associated with this project are:  
	- ID: 2205966; OCE-PRF: Investigating ontogenetic shifts in microbe-derived nutrition in reef building corals; National Science Foundation  
	- ID: 1921465; COLLABORATIVE RESEARCH: URoL : Epigenetics 2: Predicting phenotypic and eco-evolutionary consequences of environmental-energetic-epigenetic linkages; National Science Foundation  

This was submitted at 10:20 to NCBI. The BioProject number is PRJNA900235 under submission number SUB12274138.    

## 2. BioSamples  

BioSamples were created with a batch upload under the project PRJNA900235. The information for BioSamples is:  

- Release date of November 30, 2022 as done for the BioProject.  
- The package we will use is MIMS Enviornmental/Metagenome with the selection for "host-associated" samples  
- The metadata [attribute file for these BioSamples can be found on GitHub here](https://github.com/AHuffmyer/EarlyLifeHistory_Energetics/blob/master/Mcap2020/Data/NCBI%20Upload/McapOntogeny_MIMS.me.host-associated.5.0.xlsx).  

This was submitted at 13:12 to NCBI. The BioSamples are under submission number SUB12274189.  

The BioSamples were approved under the following numbers:  

| **Accession** | **Sample Name** | **Organism**     | **Tax ID** | **BioProject** |
|----------------|-----------------|------------------|------------|----------------|
| SAMN31685106   | AH1             | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685107   | AH2             | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685108   | AH3             | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685109   | AH4             | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685110   | AH5             | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685111   | AH6             | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685112   | AH7             | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685113   | AH8             | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685114   | AH9             | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685115   | AH10            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685116   | AH11            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685117   | AH12            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685118   | AH13            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685119   | AH14            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685120   | AH15            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685121   | AH16            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685122   | AH17            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685123   | AH18            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685124   | AH19            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685125   | AH20            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685126   | AH21            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685127   | AH22            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685128   | AH23            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685129   | AH24            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685130   | AH25            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685131   | AH26            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685132   | AH27            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685133   | AH28            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685134   | AH29            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685135   | AH30            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685136   | AH31            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685137   | AH32            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685138   | AH33            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685139   | AH34            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685140   | AH35            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685141   | AH36            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685142   | AH37            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685143   | AH38            | coral metagenome | 496922     | PRJNA900235    |
| SAMN31685144   | AH39            | coral metagenome | 496922     | PRJNA900235    | 


## 3. SRA - TagSeq Gene Expression  

Set submission to release November 30, 2022 as done for BioProjects and BioSamples.  

First, in Andromeda set up a folder that contains symlinks to only the raw sequence files that we want to upload to NCBI.  

```
cd /data/putnamlab/ashuffmyer/mcap-2020-tagseq/sequences
mkdir raw_files_tagseq
cd raw_files_tagseq

ln -s /data/putnamlab/ashuffmyer/mcap-2020-tagseq/sequences/AH*gz /data/putnamlab/ashuffmyer/mcap-2020-tagseq/sequences/raw_files_tagseq

```
 
The metadata information for TagSeq sequences [can be found here](https://github.com/AHuffmyer/EarlyLifeHistory_Energetics/blob/master/Mcap2020/Data/NCBI%20Upload/SRA_metadata_acc_TagSeq.xlsx). 

The path for downloading is `/data/putnamlab/ashuffmyer/mcap-2020-tagseq/sequences/raw_files_tagseq`   

Requested a preload folder on SRA during upload. 

To upload files log into Andromeda and enter the following:    

```
cd /data/putnamlab/ashuffmyer/mcap-2020-tagseq/sequences/raw_files_tagseq

ftp -i 

open ftp-private.ncbi.nlm.nih.gov

#enter name and password given on SRA webpage

cd uploads/ashuffmyer_gmail.com_bsKvx0RY

mkdir mcap_upload_tagseq

cd mcap_upload_tagseq

mput * 

```

The upload to SRA will proceed for each file with messages "transfer complete" when each is uploaded. Keep computer active until all uploads are finished.  

Continue with the submission by selecting the preload folder on SRA.  

TagSeq sequence files were submitted under SUB12274558 

| **accession** | **study** | **bioproject_accession** | **biosample_accession** | **library_ID** | **type** |
|------------------|--------------|-----------------------------|----------------------------|-------------------|----------|
|   SRR22293483    |   SRP407975  |   PRJNA900235               |   SAMN31685106             |   AH1             | TagSeq   |
|   SRR22293482    |   SRP407975  |   PRJNA900235               |   SAMN31685107             |   AH2             | TagSeq   |
|   SRR22293471    |   SRP407975  |   PRJNA900235               |   SAMN31685108             |   AH3             | TagSeq   |
|   SRR22293460    |   SRP407975  |   PRJNA900235               |   SAMN31685109             |   AH4             | TagSeq   |
|   SRR22293450    |   SRP407975  |   PRJNA900235               |   SAMN31685110             |   AH5             | TagSeq   |
|   SRR22293449    |   SRP407975  |   PRJNA900235               |   SAMN31685111             |   AH6             | TagSeq   |
|   SRR22293448    |   SRP407975  |   PRJNA900235               |   SAMN31685112             |   AH7             | TagSeq   |
|   SRR22293447    |   SRP407975  |   PRJNA900235               |   SAMN31685113             |   AH8             | TagSeq   |
|   SRR22293446    |   SRP407975  |   PRJNA900235               |   SAMN31685114             |   AH9             | TagSeq   |
|   SRR22293445    |   SRP407975  |   PRJNA900235               |   SAMN31685115             |   AH10            | TagSeq   |
|   SRR22293481    |   SRP407975  |   PRJNA900235               |   SAMN31685116             |   AH11            | TagSeq   |
|   SRR22293480    |   SRP407975  |   PRJNA900235               |   SAMN31685117             |   AH12            | TagSeq   |
|   SRR22293479    |   SRP407975  |   PRJNA900235               |   SAMN31685118             |   AH13            | TagSeq   |
|   SRR22293478    |   SRP407975  |   PRJNA900235               |   SAMN31685119             |   AH14            | TagSeq   |
|   SRR22293477    |   SRP407975  |   PRJNA900235               |   SAMN31685120             |   AH15            | TagSeq   |
|   SRR22293476    |   SRP407975  |   PRJNA900235               |   SAMN31685121             |   AH16            | TagSeq   |
|   SRR22293475    |   SRP407975  |   PRJNA900235               |   SAMN31685122             |   AH17            | TagSeq   |
|   SRR22293474    |   SRP407975  |   PRJNA900235               |   SAMN31685123             |   AH18            | TagSeq   |
|   SRR22293473    |   SRP407975  |   PRJNA900235               |   SAMN31685124             |   AH19            | TagSeq   |
|   SRR22293472    |   SRP407975  |   PRJNA900235               |   SAMN31685125             |   AH20            | TagSeq   |
|   SRR22293470    |   SRP407975  |   PRJNA900235               |   SAMN31685126             |   AH21            | TagSeq   |
|   SRR22293469    |   SRP407975  |   PRJNA900235               |   SAMN31685127             |   AH22            | TagSeq   |
|   SRR22293468    |   SRP407975  |   PRJNA900235               |   SAMN31685128             |   AH23            | TagSeq   |
|   SRR22293467    |   SRP407975  |   PRJNA900235               |   SAMN31685129             |   AH24            | TagSeq   |
|   SRR22293466    |   SRP407975  |   PRJNA900235               |   SAMN31685130             |   AH25            | TagSeq   |
|   SRR22293465    |   SRP407975  |   PRJNA900235               |   SAMN31685131             |   AH26            | TagSeq   |
|   SRR22293464    |   SRP407975  |   PRJNA900235               |   SAMN31685132             |   AH27            | TagSeq   |
|   SRR22293463    |   SRP407975  |   PRJNA900235               |   SAMN31685133             |   AH28            | TagSeq   |
|   SRR22293462    |   SRP407975  |   PRJNA900235               |   SAMN31685134             |   AH29            | TagSeq   |
|   SRR22293461    |   SRP407975  |   PRJNA900235               |   SAMN31685135             |   AH30            | TagSeq   |
|   SRR22293459    |   SRP407975  |   PRJNA900235               |   SAMN31685136             |   AH31            | TagSeq   |
|   SRR22293458    |   SRP407975  |   PRJNA900235               |   SAMN31685137             |   AH32            | TagSeq   |
|   SRR22293457    |   SRP407975  |   PRJNA900235               |   SAMN31685138             |   AH33            | TagSeq   |
|   SRR22293456    |   SRP407975  |   PRJNA900235               |   SAMN31685139             |   AH34            | TagSeq   |
|   SRR22293455    |   SRP407975  |   PRJNA900235               |   SAMN31685140             |   AH35            | TagSeq   |
|   SRR22293454    |   SRP407975  |   PRJNA900235               |   SAMN31685141             |   AH36            | TagSeq   |
|   SRR22293453    |   SRP407975  |   PRJNA900235               |   SAMN31685142             |   AH37            | TagSeq   |
|   SRR22293452    |   SRP407975  |   PRJNA900235               |   SAMN31685143             |   AH38            | TagSeq   |
|   SRR22293451    |   SRP407975  |   PRJNA900235               |   SAMN31685144             |   AH39            | TagSeq   |
 
## 4. SRA - 16S Bacterial Amplicon 

Set submission to release November 30, 2022 as done for BioProjects and BioSamples. 

First, in Andromeda set up a folder that contains symlinks to only the raw sequence files that we want to upload to NCBI.  

```
cd /data/putnamlab/ashuffmyer/AH_MCAP_16S/raw_data
mkdir raw_files_16s
cd raw_files_16s

ln -s /data/putnamlab/ashuffmyer/AH_MCAP_16S/raw_data/WSH*gz /data/putnamlab/ashuffmyer/AH_MCAP_16S/raw_data/raw_files_16s

```

The metadata information for 16S sequences [can be found here](https://github.com/AHuffmyer/EarlyLifeHistory_Energetics/blob/master/Mcap2020/Data/NCBI%20Upload/SRA_metadata_acc_16S.xlsx).  

The path for downloading is `/data/putnamlab/ashuffmyer/AH_MCAP_16S/raw_data/raw_files_16s`  

Requested a preload folder on SRA during upload. 

To upload files log into Andromeda and enter the following:    

```
cd /data/putnamlab/ashuffmyer/AH_MCAP_16S/raw_data/raw_files_16s

ftp -i 

open ftp-private.ncbi.nlm.nih.gov

#enter name and password given on SRA webpage

cd uploads/ashuffmyer_gmail.com_bsKvx0RY 

mkdir mcap_upload_16s

cd mcap_upload_16s

mput * 

```

Sequences were submitted under SUB12284658 

| **accession** | **study** | **bioproject_accession** | **biosample_accession** | **library_ID** | **title** | **type** |
|------------------|--------------|-----------------------------|----------------------------|-------------------|--------------|----------|
|   SRR22293605    |   SRP407975  |   PRJNA900235               |   SAMN31685106             |   WSH181          |   AH1        | 16S      |
|   SRR22293604    |   SRP407975  |   PRJNA900235               |   SAMN31685107             |   WSH193          |   AH2        | 16S      |
|   SRR22293593    |   SRP407975  |   PRJNA900235               |   SAMN31685108             |   WSH194          |   AH3        | 16S      |
|   SRR22293582    |   SRP407975  |   PRJNA900235               |   SAMN31685109             |   WSH195          |   AH4        | 16S      |
|   SRR22293572    |   SRP407975  |   PRJNA900235               |   SAMN31685110             |   WSH201          |   AH5        | 16S      |
|   SRR22293571    |   SRP407975  |   PRJNA900235               |   SAMN31685111             |   WSH202          |   AH6        | 16S      |
|   SRR22293570    |   SRP407975  |   PRJNA900235               |   SAMN31685112             |   WSH203          |   AH7        | 16S      |
|   SRR22293569    |   SRP407975  |   PRJNA900235               |   SAMN31685113             |   WSH204          |   AH8        | 16S      |
|   SRR22293568    |   SRP407975  |   PRJNA900235               |   SAMN31685114             |   WSH205          |   AH9        | 16S      |
|   SRR22293567    |   SRP407975  |   PRJNA900235               |   SAMN31685115             |   WSH206          |   AH10       | 16S      |
|   SRR22293603    |   SRP407975  |   PRJNA900235               |   SAMN31685116             |   WSH207          |   AH11       | 16S      |
|   SRR22293602    |   SRP407975  |   PRJNA900235               |   SAMN31685117             |   WSH182          |   AH12       | 16S      |
|   SRR22293601    |   SRP407975  |   PRJNA900235               |   SAMN31685118             |   WSH208          |   AH13       | 16S      |
|   SRR22293600    |   SRP407975  |   PRJNA900235               |   SAMN31685119             |   WSH209          |   AH14       | 16S      |
|   SRR22293599    |   SRP407975  |   PRJNA900235               |   SAMN31685120             |   WSH210          |   AH15       | 16S      |
|   SRR22293598    |   SRP407975  |   PRJNA900235               |   SAMN31685121             |   WSH211          |   AH16       | 16S      |
|   SRR22293597    |   SRP407975  |   PRJNA900235               |   SAMN31685122             |   WSH212          |   AH17       | 16S      |
|   SRR22293596    |   SRP407975  |   PRJNA900235               |   SAMN31685123             |   WSH213          |   AH18       | 16S      |
|   SRR22293595    |   SRP407975  |   PRJNA900235               |   SAMN31685124             |   WSH183          |   AH19       | 16S      |
|   SRR22293594    |   SRP407975  |   PRJNA900235               |   SAMN31685125             |   WSH214          |   AH20       | 16S      |
|   SRR22293592    |   SRP407975  |   PRJNA900235               |   SAMN31685126             |   WSH215          |   AH21       | 16S      |
|   SRR22293591    |   SRP407975  |   PRJNA900235               |   SAMN31685127             |   WSH216          |   AH22       | 16S      |
|   SRR22293590    |   SRP407975  |   PRJNA900235               |   SAMN31685128             |   WSH185          |   AH23       | 16S      |
|   SRR22293589    |   SRP407975  |   PRJNA900235               |   SAMN31685129             |   WSH186          |   AH24       | 16S      |
|   SRR22293588    |   SRP407975  |   PRJNA900235               |   SAMN31685130             |   WSH187          |   AH25       | 16S      |
|   SRR22293587    |   SRP407975  |   PRJNA900235               |   SAMN31685131             |   WSH184          |   AH26       | 16S      |
|   SRR22293586    |   SRP407975  |   PRJNA900235               |   SAMN31685132             |   WSH188          |   AH27       | 16S      |
|   SRR22293585    |   SRP407975  |   PRJNA900235               |   SAMN31685133             |   WSH189          |   AH28       | 16S      |
|   SRR22293584    |   SRP407975  |   PRJNA900235               |   SAMN31685134             |   WSH190          |   AH29       | 16S      |
|   SRR22293583    |   SRP407975  |   PRJNA900235               |   SAMN31685135             |   WSH191          |   AH30       | 16S      |
|   SRR22293581    |   SRP407975  |   PRJNA900235               |   SAMN31685136             |   WSH192          |   AH31       | 16S      |
|   SRR22293580    |   SRP407975  |   PRJNA900235               |   SAMN31685137             |   WSH196          |   AH32       | 16S      |
|   SRR22293579    |   SRP407975  |   PRJNA900235               |   SAMN31685138             |   WSH174          |   AH33       | 16S      |
|   SRR22293578    |   SRP407975  |   PRJNA900235               |   SAMN31685139             |   WSH178          |   AH34       | 16S      |
|   SRR22293577    |   SRP407975  |   PRJNA900235               |   SAMN31685140             |   WSH179          |   AH35       | 16S      |
|   SRR22293576    |   SRP407975  |   PRJNA900235               |   SAMN31685141             |   WSH175          |   AH36       | 16S      |
|   SRR22293575    |   SRP407975  |   PRJNA900235               |   SAMN31685142             |   WSH176          |   AH37       | 16S      |
|   SRR22293574    |   SRP407975  |   PRJNA900235               |   SAMN31685143             |   WSH180          |   AH38       | 16S      |
|   SRR22293573    |   SRP407975  |   PRJNA900235               |   SAMN31685144             |   WSH177          |   AH39       | 16S      |

## 5. SRA - ITS2 Symbiodiniaceae Amplicon 

First, in Andromeda set up a folder that contains symlinks to only the raw sequence files that we want to upload to NCBI.  

```
cd /data/putnamlab/ashuffmyer/AH_MCAP_ITS2/raw_data
mkdir raw_files_its2
cd raw_files_its2

ln -s /data/putnamlab/ashuffmyer/AH_MCAP_ITS2/raw_data/WSH*gz /data/putnamlab/ashuffmyer/AH_MCAP_ITS2/raw_data/raw_files_its2

```

The metadata information for ITS2 sequences [can be found here](https://github.com/AHuffmyer/EarlyLifeHistory_Energetics/blob/master/Mcap2020/Data/NCBI%20Upload/SRA_metadata_acc_ITS2.xlsx).  

The path for downloading is `/data/putnamlab/ashuffmyer/AH_MCAP_ITS2/raw_data/raw_files_its2`  

Requested a preload folder on SRA during upload. 

To upload files log into Andromeda and enter the following:    

```
cd /data/putnamlab/ashuffmyer/AH_MCAP_ITS2/raw_data/raw_files_its2

ftp -i 

open ftp-private.ncbi.nlm.nih.gov

#enter name and password given on SRA webpage

cd uploads/ashuffmyer_gmail.com_bsKvx0RY

mkdir mcap_upload_its2

cd mcap_upload_its2

mput * 

```

Sequences were submitted under SUB12284680 

| **accession** | **study** | **bioproject_accession** | **biosample_accession** | **library_ID** | **title** | **type** |
|------------------|--------------|-----------------------------|----------------------------|-------------------|--------------|----------|
|   SRR22294931    |   SRP407975  |   PRJNA900235               |   SAMN31685106             |   WSH053          |   AH1        | ITS2     |
|   SRR22294930    |   SRP407975  |   PRJNA900235               |   SAMN31685107             |   WSH065          |   AH2        | ITS2     |
|   SRR22294919    |   SRP407975  |   PRJNA900235               |   SAMN31685108             |   WSH066          |   AH3        | ITS2     |
|   SRR22294908    |   SRP407975  |   PRJNA900235               |   SAMN31685109             |   WSH067          |   AH4        | ITS2     |
|   SRR22294898    |   SRP407975  |   PRJNA900235               |   SAMN31685110             |   WSH069          |   AH5        | ITS2     |
|   SRR22294897    |   SRP407975  |   PRJNA900235               |   SAMN31685111             |   WSH070          |   AH6        | ITS2     |
|   SRR22294896    |   SRP407975  |   PRJNA900235               |   SAMN31685112             |   WSH071          |   AH7        | ITS2     |
|   SRR22294895    |   SRP407975  |   PRJNA900235               |   SAMN31685113             |   WSH072          |   AH8        | ITS2     |
|   SRR22294894    |   SRP407975  |   PRJNA900235               |   SAMN31685114             |   WSH073          |   AH9        | ITS2     |
|   SRR22294893    |   SRP407975  |   PRJNA900235               |   SAMN31685115             |   WSH074          |   AH10       | ITS2     |
|   SRR22294929    |   SRP407975  |   PRJNA900235               |   SAMN31685116             |   WSH075          |   AH11       | ITS2     |
|   SRR22294928    |   SRP407975  |   PRJNA900235               |   SAMN31685117             |   WSH054          |   AH12       | ITS2     |
|   SRR22294927    |   SRP407975  |   PRJNA900235               |   SAMN31685118             |   WSH076          |   AH13       | ITS2     |
|   SRR22294926    |   SRP407975  |   PRJNA900235               |   SAMN31685119             |   WSH077          |   AH14       | ITS2     |
|   SRR22294925    |   SRP407975  |   PRJNA900235               |   SAMN31685120             |   WSH078          |   AH15       | ITS2     |
|   SRR22294924    |   SRP407975  |   PRJNA900235               |   SAMN31685121             |   WSH079          |   AH16       | ITS2     |
|   SRR22294923    |   SRP407975  |   PRJNA900235               |   SAMN31685122             |   WSH080          |   AH17       | ITS2     |
|   SRR22294922    |   SRP407975  |   PRJNA900235               |   SAMN31685123             |   WSH081          |   AH18       | ITS2     |
|   SRR22294921    |   SRP407975  |   PRJNA900235               |   SAMN31685124             |   WSH055          |   AH19       | ITS2     |
|   SRR22294920    |   SRP407975  |   PRJNA900235               |   SAMN31685125             |   WSH082          |   AH20       | ITS2     |
|   SRR22294918    |   SRP407975  |   PRJNA900235               |   SAMN31685126             |   WSH083          |   AH21       | ITS2     |
|   SRR22294917    |   SRP407975  |   PRJNA900235               |   SAMN31685127             |   WSH084          |   AH22       | ITS2     |
|   SRR22294916    |   SRP407975  |   PRJNA900235               |   SAMN31685128             |   WSH057          |   AH23       | ITS2     |
|   SRR22294915    |   SRP407975  |   PRJNA900235               |   SAMN31685129             |   WSH058          |   AH24       | ITS2     |
|   SRR22294914    |   SRP407975  |   PRJNA900235               |   SAMN31685130             |   WSH059          |   AH25       | ITS2     |
|   SRR22294913    |   SRP407975  |   PRJNA900235               |   SAMN31685131             |   WSH056          |   AH26       | ITS2     |
|   SRR22294912    |   SRP407975  |   PRJNA900235               |   SAMN31685132             |   WSH060          |   AH27       | ITS2     |
|   SRR22294911    |   SRP407975  |   PRJNA900235               |   SAMN31685133             |   WSH061          |   AH28       | ITS2     |
|   SRR22294910    |   SRP407975  |   PRJNA900235               |   SAMN31685134             |   WSH062          |   AH29       | ITS2     |
|   SRR22294909    |   SRP407975  |   PRJNA900235               |   SAMN31685135             |   WSH063          |   AH30       | ITS2     |
|   SRR22294907    |   SRP407975  |   PRJNA900235               |   SAMN31685136             |   WSH064          |   AH31       | ITS2     |
|   SRR22294906    |   SRP407975  |   PRJNA900235               |   SAMN31685137             |   WSH068          |   AH32       | ITS2     |
|   SRR22294905    |   SRP407975  |   PRJNA900235               |   SAMN31685138             |   WSH046          |   AH33       | ITS2     |
|   SRR22294904    |   SRP407975  |   PRJNA900235               |   SAMN31685139             |   WSH050          |   AH34       | ITS2     |
|   SRR22294903    |   SRP407975  |   PRJNA900235               |   SAMN31685140             |   WSH051          |   AH35       | ITS2     |
|   SRR22294902    |   SRP407975  |   PRJNA900235               |   SAMN31685141             |   WSH047          |   AH36       | ITS2     |
|   SRR22294901    |   SRP407975  |   PRJNA900235               |   SAMN31685142             |   WSH048          |   AH37       | ITS2     |
|   SRR22294900    |   SRP407975  |   PRJNA900235               |   SAMN31685143             |   WSH052          |   AH38       | ITS2     |
|   SRR22294899    |   SRP407975  |   PRJNA900235               |   SAMN31685144             |   WSH049          |   AH39       | ITS2     |


# Complete metadata 

All uploads completed on 14 November 2022.  

Complete metadata file can be found on [GitHub here](https://github.com/AHuffmyer/EarlyLifeHistory_Energetics/blob/master/Mcap2020/Data/NCBI%20Upload/sequencing_metadata.xlsx).   
     

  

