# Mcap Early Life Gene Expression

Genome version V2  

Download, QC, filtering/cleaning done previously. Starting at the alignment step.  

# 1. HISAT2  

Obtain reference genome assembly and gff annotation file 

```
cd sequences/ 

wget http://cyanophora.rutgers.edu/montipora/Montipora_capitata_HIv2.assembly.fasta.gz

wget http://cyanophora.rutgers.edu/montipora/Montipora_capitata_HIv2.genes.gff3.gz
```

Unzip gff file 

```
gunzip sequences/Montipora_capitata_HIv2.genes.gff3.gz
```

Transfer the gff file to the local computer and run the FixGeMoMa R script. I am offloading to look at the output in more detail, but this can be run as an R script on Andromeda in the future.  

V2 gff file 

```
scp ashuffmyer@ssh3.hac.uri.edu:/data/putnamlab/ashuffmyer/mcap-2020-tagseq/sequences/Montipora_capitata_HIv2.genes.gff3 ~/MyProjects/EarlyLifeHistory_Energetics/Mcap2020/Data/TagSeq
```

V1 gff file

```
scp ashuffmyer@ssh3.hac.uri.edu:/data/putnamlab/ashuffmyer/mcap-2020-tagseq/sequences/Mcap.GFFannotation.gff ~/MyProjects/EarlyLifeHistory_Energetics/Mcap2020/Data/TagSeq
```



Upload back to Andromeda.  




```
nano /data/putnamlab/ashuffmyer/mcap-2020-tagseq/scripts/align_v2.sh
```

```
#!/bin/bash
#SBATCH -t 120:00:00
#SBATCH --nodes=1 --ntasks-per-node=20
#SBATCH --export=NONE
#SBATCH --mem=200GB
#SBATCH --mail-type=BEGIN,END,FAIL #email you when job starts, stops and/or fails
#SBATCH --mail-user=ashuffmyer@uri.edu #your email to send notifications
#SBATCH --account=putnamlab                  
#SBATCH --error="alignV2_error" #if your job fails, the error report will be put in this file
#SBATCH --output="alignV2_output" #once your job is completed, any final job report comments will be put in this file
#SBATCH -D /data/putnamlab/ashuffmyer/mcap-2020-tagseq/sequences

# load modules needed
module load HISAT2/2.2.1-foss-2019b
module load SAMtools/1.9-foss-2018b

#unzip reference genome
gunzip Montipora_capitata_HIv2.assembly.fasta.gz

# index the reference genome for Montipora capitata output index to working directory
hisat2-build -f /data/putnamlab/ashuffmyer/mcap-2020-tagseq/sequences/Montipora_capitata_HIv2.assembly.fasta ./Mcapitata_ref_v2 # called the reference genome (scaffolds)
echo "Referece genome indexed. Starting alingment" $(date)

# This script exports alignments as bam files
# sorts the bam file because Stringtie takes a sorted file for input (--dta)
# removes the sam file because it is no longer needed
array=($(ls clean*)) # call the clean sequences - make an array to align
for i in ${array[@]}; do
        sample_name=`echo $i| awk -F [.] '{print $2}'`
	hisat2 -p 8 --dta -x Mcapitata_ref_v2 -U ${i} -S ${sample_name}.sam
        samtools sort -@ 8 -o ${sample_name}.bam ${sample_name}.sam
    		echo "${i} bam-ified!"
        rm ${sample_name}.sam
done

```

```
sbatch /data/putnamlab/ashuffmyer/mcap-2020-tagseq/scripts/align_v2.sh
```

This creates a .bam file for each sample.  

# 2. Stringtie 2  


IS THE PROBLEM IN THE "FIXED GFF"????? Do we need to run GeMoMA??? Looks like that just corrects gene names? Do we need to do this? 

```
nano /data/putnamlab/ashuffmyer/mcap-2020-tagseq/scripts/stringtie_v2.sh
```


```
#!/bin/bash
#SBATCH -t 120:00:00
#SBATCH --nodes=1 --ntasks-per-node=20
#SBATCH --export=NONE
#SBATCH --mem=200GB
#SBATCH --mail-type=BEGIN,END,FAIL #email you when job starts, stops and/or fails
#SBATCH --mail-user=ashuffmyer@uri.edu #your email to send notifications
#SBATCH --account=putnamlab                  
#SBATCH --error="stringtieV2_error" #if your job fails, the error report will be put in this file
#SBATCH --output="stringtieV2_output" #once your job is completed, any final job report comments will be put in this file
#SBATCH -D /data/putnamlab/ashuffmyer/mcap-2020-tagseq/sequences

#load packages
module load StringTie/2.1.4-GCC-9.3.0

#Transcript assembly: StringTie

array=($(ls *.bam)) #Make an array of sequences to assemble
 
for i in ${array[@]}; do #Running with the -e option to compare output to exclude novel genes. Also output a file with the gene abundances
        sample_name=`echo $i| awk -F [_] '{print $1"_"$2"_"$3}'`
	stringtie -p 8 -e -B -G Montipora_capitata_HIv2.genes.gff3 -A ${sample_name}.gene_abund.tab -o ${sample_name}.gtf ${i}
        echo "StringTie assembly for seq file ${i}" $(date)
done
echo "StringTie assembly COMPLETE, starting assembly analysis" $(date)
```
-p means number of threads/CPUs to use (8 here)

-e means only estimate abundance of given reference transcripts (only genes from the genome) - dont use if using splice variance aware to merge novel and ref based, We have 63227 genes (+1 header) and we have that many rows in our data!

-B means enable output of ballgown table files to be created in same output as GTF

-G means genome reference to be included in the merging 

```
sbatch /data/putnamlab/ashuffmyer/mcap-2020-tagseq/scripts/stringtie_v2.sh
```

This will make a .gtf file for each sample.  

# 3. Prep DE  

```
nano /data/putnamlab/ashuffmyer/mcap-2020-tagseq/scripts/prepDE_v2.sh
```

```
#!/bin/bash
#SBATCH -t 120:00:00
#SBATCH --nodes=1 --ntasks-per-node=20
#SBATCH --export=NONE
#SBATCH --mem=200GB
#SBATCH --mail-type=BEGIN,END,FAIL #email you when job starts, stops and/or fails
#SBATCH --mail-user=ashuffmyer@uri.edu #your email to send notifications
#SBATCH --account=putnamlab                  
#SBATCH --error="stringtieV2_error" #if your job fails, the error report will be put in this file
#SBATCH --output="stringtieV2_output" #once your job is completed, any final job report comments will be put in this file
#SBATCH -D /data/putnamlab/ashuffmyer/mcap-2020-tagseq/sequences

#load packages
module load Python/2.7.15-foss-2018b #Python
module load StringTie/2.1.4-GCC-9.3.0

#Transcript assembly: StringTie
module load GffCompare/0.12.1-GCCcore-8.3.0

#Transcript assembly QC: GFFCompare

#make gtf_list.txt file
ls AH*.gtf > gtf_list.txt

stringtie --merge -p 8 -G Montipora_capitata_HIv2.genes.gff3 -o Mcapitata_merged.gtf gtf_list.txt #Merge GTFs to form $
echo "Stringtie merge complete" $(date)

gffcompare -r Montipora_capitata_HIv2.genes.gff3 -G -o merged Mcapitata_merged.gtf #Compute the accuracy and pre$
echo "GFFcompare complete, Starting gene count matrix assembly..." $(date)

#make gtf list text file
for filename in AH*.gtf; do echo $filename $PWD/$filename; done > listGTF.txt

python ../scripts/prepDE.py -g Mcapitata_gene_count_matrix_V2.csv -i listGTF.txt #Compile the gene count matrix
echo "Gene count matrix compiled." $(date)
```

```
sbatch /data/putnamlab/ashuffmyer/mcap-2020-tagseq/scripts/prepDE_v2.sh
```

Rename and move gene count matrix off of server  

```
scp ashuffmyer@ssh3.hac.uri.edu:/data/putnamlab/ashuffmyer/mcap-2020-tagseq/Mcapitata_gene_count_matrix_V2.csv ~/MyProjects/EarlyLifeHistory_Energetics/Mcap2020/Output/TagSeq
```


