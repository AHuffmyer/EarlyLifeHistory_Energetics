![GitHub commit activity](https://img.shields.io/github/commit-activity/m/AHuffmyer/EarlyLifeHistory_Energetics) ![GitHub last commit](https://img.shields.io/github/last-commit/AHuffmyer/EarlyLifeHistory_Energetics) ![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/AHuffmyer/EarlyLifeHistory_Energetics) ![GitHub issues](https://img.shields.io/github/issues/AHuffmyer/EarlyLifeHistory_Energetics) ![GitHub closed issues](https://img.shields.io/github/issues-closed/AHuffmyer/EarlyLifeHistory_Energetics) 

[![SRA](https://img.shields.io/badge/SRA-PRJNA900235-brightgreen)](https://www.ncbi.nlm.nih.gov/bioproject/?term=PRJNA900235)  

[![OSF](https://img.shields.io/badge/OSF-10.17605%2FOSF.IO%2FKMU7H-brightgreen)](https://doi.org/10.17605/OSF.IO/KMU7H)  

# Metabolic shifts in reef-building corals from fertilization to settlement reveals vulnerable developmental windows

Ariana S. Huffmyer, Kevin H. Wong, Danielle M. Becker-Polinski, Emma Strand, Tali Mass, Hollie M. Putnam  

This repository contains data, scripts, and analysis for early life history symbiotic and metabolic responses in the vertically-transmitting reef building coral *Montipora capitata* across developmental stages. 

<img width="1008" alt="project_overview" src="https://user-images.githubusercontent.com/32178010/211181816-cf21abb7-7038-4f86-9aca-3ca326a958ce.png">

**Figure 1.** (A) Variables measured across *Montipora capitata* development. Filled squares indicate response variable was sampled at the respective time point; black squares indicate the response was not measured or data is not available. Color corresponds to major life history grouping (eggs=brown, embryos=yellow, larvae=cyan, metamorphosed polyps=green, attached recruits=pink). Hpf indicates hours-post-fertilization. (B) Photographs of 1 - *Montipora capitata* colony; 2 - Egg-sperm bundles fertilized in 50 mL falcon tubes; 3 - Conical larval rearing chambers; 4 - Planula larvae, note pigmentation due to presence of symbiont cells; 5 - Attached recruits on settlement plug. 

In this project, we collected physiology, metabolic, metabolomic, transcriptomic, and microbiome data across egg, embryo, larvae, metamorphosed polyp, and attached recruit lifestages, shown in Figure 1. This work was conducted in 2020 at the Hawaii Institute of Marine Biology and the Coral Resilience Lab. 

Developmental stages measured included:  
- Eggs: Fertilized eggs from pooled fertilization of egg and sperm from wildtype egg-sperm bundles collected in Kaneohe Bay, Oahu, Hawaii. 
- Embryos: Embryos developing starting at cleavage through to the gastrula stage. 
- Larvae: Larvae sampled after development into the swimming planula stage.  
- Metamorphosed polyps: Polyps that underwent metamorphoses, prior to attachment to the substrate. Collected free floating in the water or resting on the bottom of rearing containers. 
- Attached recruits: Metamorphosed and attached recruits attached to aragonite plug substrate.  

### Repository contents  

The respository is organized in folders for `Data`, `Scripts`, `Output`, and `Figures`. The `Data` folder contains raw data for each analysis. The `Output` folder contains any data produced by analyses or output through analytical pipelines. The `Scripts` folder contains all R scripts and .md files that contain any bioinformatics pipelines used. The `Figures` folder contains all figures and visualizations produced from analyses.  

For all analyses, consistent lifestage and developmental time point identifiers are imported and matched to the `Data/lifestage_metadata.csv` file. Note that in each dataset there are variations in the nomenclature used for each developmental time point. Final figures are all standardized to the correct metadata names that identify lifestages as "Lifestage (hours post-fertilization)".  

If multiple .Rmd files are used for the same data type, the scripts are numbered for the order in which the analysis is run.  

#### Physiology 

Physiological data was collected for larval size (calculated as larval volume) and symbiont densities. Larval size is available for eggs through metamorphosed polyps. Symbiont density is calculated as cells per individual in eggs through metamorphosed polyps and as cells per unit surface area for attached recruits. Physiology data is analyzed using the `Physiology_Analysis.Rmd` script.  

#### Respirometry 

Respirometry data was collected in late embryos, larvae, and metamorphosed polyps. Metabolic rates measured included: 
- Light-enhanced respiration: Respiration rates calculated as nmol oxygen consumed per individual per minute measured in the dark following measurement of photosynthesis rates in the light.  
- Net and gross photosynthesis: Net photosynthesis rates were calculated as nmol oxygen produced per individual per minute with gross photosynthesis calculated as net photosynthesis + oxygen consumed through respiration.  
- Gross photosynthesis to respiration ratios: The ratio of P to R was calculated by dividing gross photosynthesis by respiration rates. A P:R >1 indicates higher oxygen production than consumption.

Respirometry data is analyzed by first extracting metabolic rates using the `LoLinR` package in the `1_Respirometry_Extraction.Rmd` script and then plotted and analyzed in the `2_Respirometry_Plotting.Rmd` script.  

#### Gene Expression

Gene expression was characterized across life stages with TagSeq sequencing at the University of Texas Austin. Sequences were trimmed and underwent QC followed by alignment to the latest (version 3) *Montipora capitata* genome available through [Rutgers University](http://cyanophora.rutgers.edu/montipora/). Sequences were aligned and a gene count matrix was calculated using bioinformatics pipelines detailed in the `TagSeq_BioInf_genomeV3.md` file in the `Scripts/TagSeq` folder. 

The gene count matrix was then imported into R with multivariate visualizations and differential gene expression analysis in the `DESeq2_Mcap_V3.Rmd` script. Results of DEG analyses were then functionally annotated using the reference genome with accompanying functional annotation. Functional annotation of genes was conducted using GO-Seq in the `DESeq2_Mcap_V3.Rmd` script. 

Raw sequence files can be found on NCBI SRA under BioProject PRJNA900235. 

[![SRA](https://img.shields.io/badge/SRA-PRJNA900235-brightgreen)](https://www.ncbi.nlm.nih.gov/bioproject/?term=PRJNA900235)  

#### Metabolomics  

Metabolomics was characterized across development with untargetted metabolomic analysis conducted at Rutgers University Metabolomics Shared Resource. Ion count tables of identified metabolites first underwent QC and filtering with multivariate visualization and analysis in the `metabolomics.Rmd` script. Metabolomic profiles across lifestages were then analyzed using a supervised partial least squares discriminant analysis and VIP score approach in the `metabolomics.Rmd` script.

Raw metabolomics files can be found on the Open Science Framework project.  

[![OSF](https://img.shields.io/badge/OSF-10.17605%2FOSF.IO%2FKMU7H-brightgreen)](https://doi.org/10.17605/OSF.IO/KMU7H) 

#### Symbiont ITS2  

Symbiont ITS2 sequences were analyzed using the [SymPortal pipeline](https://symportal.org/). Symbiont communities at the DIV level were analyzed in the `ITS2_strains.Rmd` file. Filtering and subsampling were conducted in this R script. We further performed downsampling tests to determine detection limits in the `ITS2_downsampling.Rmd` script.  

Raw sequence files can be found on NCBI SRA under BioProject PRJNA900235. 

[![SRA](https://img.shields.io/badge/SRA-PRJNA900235-brightgreen)](https://www.ncbi.nlm.nih.gov/bioproject/?term=PRJNA900235)  

#### Bacterial 16S  

Bacterial 16S sequences were analyzed using the [Mothur MiSeq SOP pipeline](https://mothur.org/wiki/miseq_sop/) detailed in the `Mothur_bioinformatics.md` file. Bacterial communities were analyzed in the `16S_Mothur.Rmd` file. Due to low DNA extraction and bacterial sequence abundance, samples from the earliest lifestages are not included in analysis.  
 
Raw sequence files can be found on NCBI SRA under BioProject PRJNA900235. 

[![SRA](https://img.shields.io/badge/SRA-PRJNA900235-brightgreen)](https://www.ncbi.nlm.nih.gov/bioproject/?term=PRJNA900235)  

### Contact 

Any questions about this project and the contents of this repository can be directed to Ariana S. Huffmyer at ashuffmyer (at) gmail.com.
