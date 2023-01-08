# Mcap Early Life Gene Expression
UTGSAF JA 21284

# Sequencing Info
   
Project ID: 286942669

# 1. HISAT2  

Using concatenated genome reference file for Cladocopium and Durusdinium. Concatenated genome reference file.    

Copy from Erin Chille repository (come back and edit with original location).  

```
cd /data/putnamlab/ashuffmyer/mcap-2020-tagseq
mkdir symbiont
cd symbiont

#copy in alignment files 

cp /data/putnamlab/erin_chille/mcap2019/huffmyer/symbiont.gff.gz /data/putnamlab/ashuffmyer/mcap-2020-tagseq/symbiont

cp /data/putnamlab/erin_chille/mcap2019/huffmyer/symbiont_genome_cat.fasta.gz /data/putnamlab/ashuffmyer/mcap-2020-tagseq/symbiont

# copy in clean trimmed sequence files  

ln -s /data/putnamlab/ashuffmyer/mcap-2020-tagseq/sequences/clean*fastq.gz /data/putnamlab/ashuffmyer/mcap-2020-tagseq/symbiont
```

```
nano symbiont_align.sh
```

```
#!/bin/bash
#SBATCH -t 120:00:00
#SBATCH --nodes=1 --ntasks-per-node=20
#SBATCH --mem=100GB
#SBATCH --export=NONE
#SBATCH --output="symbiontalign_out.%j"
#SBATCH --error="symbiontalign_err.%j"

# load modules needed
module load HISAT2/2.2.1-foss-2019b
module load SAMtools/1.9-foss-2018b

#unzip reference genome
#gunzip symbiont_genome_cat.fasta.gz
#gunzip symbiont.gff.gz

# index the reference genome for Montipora capitata output index to working directory
hisat2-build -f symbiont_genome_cat.fasta ./symbiont_ref # called the reference genome (scaffolds)
echo "Referece genome indexed. Starting alingment" $(date)

# This script exports alignments as bam files
# sorts the bam file because Stringtie takes a sorted file for input (--dta)
# removes the sam file because it is no longer needed
array=($(ls clean*)) # call the clean sequences - make an array to align
for i in ${array[@]}; do
        sample_name=`echo $i| awk -F [.] '{print $2}'`
	hisat2 -p 8 --dta -x symbiont_ref -U ${i} -S ${sample_name}.sam
        samtools sort -@ 8 -o ${sample_name}.bam ${sample_name}.sam
    		echo "${i} bam-ified!"
        rm ${sample_name}.sam
done

```

```
sbatch symbiont_align.sh
```

Read the output file for alignment statistics.  

We had low alignment for all samples (<5%).  This indicates we may not have enough symbiont reads to analyze gene expression. This could be due to low extraction of symbiont reads (extraction optimized for the coral host) or low read abundance due to low symbiont abundance in early life stages.  

# 4. Stringtie 2  

```
nano symbiont_stringtie.sh
```


```
#!/bin/bash
#SBATCH -t 120:00:00
#SBATCH --nodes=1 --ntasks-per-node=20
#SBATCH --mem=100GB
#SBATCH --export=NONE
#SBATCH --output="stringtie_out.%j"
#SBATCH --error="stringtie_err.%j"

#load packages
module load StringTie/2.1.4-GCC-9.3.0

#Transcript assembly: StringTie

array=($(ls *.bam)) #Make an array of sequences to assemble
 
for i in ${array[@]}; do #Running with the -e option to compare output to exclude novel genes. Also output a file with the gene abundances
        sample_name=`echo $i| awk -F [_] '{print $1"_"$2"_"$3}'`
	stringtie -p 8 -e -B -G symbiont.gff -A ${sample_name}.gene_abund.tab -o ${sample_name}.gtf ${i}
        echo "StringTie assembly for seq file ${i}" $(date)
done
echo "StringTie assembly COMPLETE, starting assembly analysis" $(date)
```
-p means number of threads/CPUs to use (8 here)

-e means only estimate abundance of given reference transcripts 

-B means enable output of ballgown table files to be created in same output as GTF

-G means genome reference to be included in the merging 

```
sbatch symbiont_stringtie.sh
```


# 5. Prep DE  

```
nano symbiont_prepDE.sh
```

```
#!/bin/bash
#SBATCH -t 120:00:00
#SBATCH --nodes=1 --ntasks-per-node=20
#SBATCH --mem=100GB
#SBATCH --export=NONE
#SBATCH --output="prepDE_out.%j"
#SBATCH --error="prepDE_err.%j"

#load packages
module load Python/2.7.15-foss-2018b #Python
module load StringTie/2.1.4-GCC-9.3.0

#Transcript assembly: StringTie
module load GffCompare/0.12.1-GCCcore-8.3.0

#Transcript assembly QC: GFFCompare

#make gtf_list.txt file
ls *.gtf > gtf_list.txt

stringtie --merge -p 8 -G symbiont.gff -o symbiont_merged.gtf gtf_list.txt #Merge GTFs to form $
echo "Stringtie merge complete" $(date)

gffcompare -r symbiont.gff -G -o merged symbiont_merged.gtf #Compute the accuracy and pre$
echo "GFFcompare complete, Starting gene count matrix assembly..." $(date)

#make gtf list text file
for filename in AH*.gtf; do echo $filename $PWD/$filename; done > listGTF.txt

python ../scripts/prepDE.py -g symbiont_gene_count_matrix.csv -i listGTF.txt #Compile the gene count matrix
echo "Gene count matrix compiled." $(date)
```

```
sbatch symbiont_prepDE.sh
```

# 6. Move gene count matrix off of server  

```
scp ashuffmyer@ssh3.hac.uri.edu:/data/putnamlab/ashuffmyer/mcap-2020-tagseq/symbiont/symbiont_gene_count_matrix.csv ~/MyProjects/EarlyLifeHistory_Energetics/Mcap2020/Output/TagSeq
```




