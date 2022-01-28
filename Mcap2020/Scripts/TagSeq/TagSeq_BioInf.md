# Mcap Early Life Gene Expression
UTGSAF JA 21284

# Sequencing Info
   
Project ID: 286942669


# 1. Data download from UTGSAF
```
nano /data/putnamlab/KITT/hputnam/20210804_McapTagSeq/BaseSpaceDownload.sh
```

```
#!/bin/bash
#SBATCH -t 24:00:00
#SBATCH --nodes=1 --ntasks-per-node=1
#SBATCH --export=NONE
#SBATCH --mem=100GB
#SBATCH --account=putnamlab
#SBATCH -D /data/putnamlab/KITT/hputnam/20210804_McapTagSeq

module load IlluminaUtils/2.11-GCCcore-9.3.0-Python-3.8.2

bs download project -i 286942669 -o /data/putnamlab/KITT/hputnam/20210804_McapTagSeq

```

```
sbatch /data/putnamlab/KITT/hputnam/20210804_McapTagSeq/BaseSpaceDownload.sh
```


Project ID: 286942669


# 2. Data QC

### working directory
```/data/putnamlab/ashuffmyer/mcap-2020-tagseq/```

```mkdir scripts```

Make md5 file 

```md5sum  sequences/*.fastq.gz > sequences/md5.transferred```

```
nano /data/putnamlab/ashuffmyer/mcap-2020-tagseq/scripts/qc.sh
```


```
#!/bin/bash
#SBATCH -t 120:00:00
#SBATCH --nodes=1 --ntasks-per-node=20
#SBATCH --mem=100GB
#SBATCH --account=putnamlab
#SBATCH --export=NONE
#SBATCH --output="%x_out.%j"
#SBATCH --error="%x_err.%j"
#SBATCH -D /data/putnamlab/ashuffmyer/mcap-2020-tagseq/sequences

# load modules needed
module load fastp/0.19.7-foss-2018b
module load FastQC/0.11.8-Java-1.8
module load MultiQC/1.9-intel-2020a-Python-3.8.2

# fastqc of raw reads

# run fastqc
fastqc *.fastq.gz

#combine all results - need to rename output file to "raw"
multiqc ./

# Make an array of sequences to trim
array1=($(ls *.fastq.gz)) 

# fastp loop; trim the Read 1 TruSeq adapter sequence; trim poly x default 10 (to trim polyA) 
for i in ${array1[@]}; do
	fastp --in1 ${i} --out1 clean.${i} --adapter_sequence=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA --trim_poly_x 6 -q 30 -y -Y 50 
# fastqc the cleaned reads
        fastqc clean.${i}
done 

echo "Read trimming of adapters complete." $(date)

# Quality Assessment of Trimmed Reads

multiqc clean* #Compile MultiQC report from FastQC files - need to rename output file to "clean"

echo "Cleaned MultiQC report generated." $(date)

```

```
sbatch /data/putnamlab/ashuffmyer/mcap-2020-tagseq/scripts/qc.sh
```

# 3. HISAT2  

Obtain reference genome assembly and gff annotation file 

```
cd sequences/ 

wget http://cyanophora.rutgers.edu/montipora/Mcap.genome_assembly.fa.gz

wget http://cyanophora.rutgers.edu/montipora/Mcap.GFFannotation.gff
```

```
nano /data/putnamlab/ashuffmyer/mcap-2020-tagseq/scripts/align.sh
```

```
#!/bin/bash
#SBATCH -t 120:00:00
#SBATCH --nodes=1 --ntasks-per-node=20
#SBATCH --mem=200GB
#SBATCH --account=putnamlab
#SBATCH --export=NONE
#SBATCH --output="%x_out.%j"
#SBATCH --error="%x_err.%j"
#SBATCH -D /data/putnamlab/ashuffmyer/mcap-2020-tagseq/sequences

# load modules needed
module load HISAT2/2.2.1-foss-2019b
module load SAMtools/1.9-foss-2018b

#unzip reference genome
gunzip Mcap.genome_assembly.fa.gz

# index the reference genome for Montipora capitata output index to working directory
hisat2-build -f /data/putnamlab/ashuffmyer/mcap-2020-tagseq/sequences/Mcap.genome_assembly.fa ./Mcapitata_ref # called the reference genome (scaffolds)
echo "Referece genome indexed. Starting alingment" $(date)

# This script exports alignments as bam files
# sorts the bam file because Stringtie takes a sorted file for input (--dta)
# removes the sam file because it is no longer needed
array=($(ls clean*)) # call the clean sequences - make an array to align
for i in ${array[@]}; do
        sample_name=`echo $i| awk -F [.] '{print $2}'`
	hisat2 -p 8 --dta -x Mcapitata_ref -U ${i} -S ${sample_name}.sam
        samtools sort -@ 8 -o ${sample_name}.bam ${sample_name}.sam
    		echo "${i} bam-ified!"
        rm ${sample_name}.sam
done

```

```
sbatch /data/putnamlab/ashuffmyer/mcap-2020-tagseq/scripts/align.sh
```

# 4. Stringtie 2  

```
nano /data/putnamlab/ashuffmyer/mcap-2020-tagseq/scripts/stringtie.sh
```
Obtain fixed GFF file
```
mv /data/putnamlab/ashuffmyer/mcap-2020-tagseq/Mcap.GFFannotation.fixed.gff /data/putnamlab/ashuffmyer/mcap-2020-tagseq/sequences/Mcap.GFFannotation.fixed.gff```

```
#!/bin/bash
#SBATCH -t 120:00:00
#SBATCH --nodes=1 --ntasks-per-node=20
#SBATCH --mem=200GB
#SBATCH --account=putnamlab
#SBATCH --export=NONE
#SBATCH --output="%x_out.%j"
#SBATCH --error="%x_err.%j"
#SBATCH -D /data/putnamlab/ashuffmyer/mcap-2020-tagseq/sequences

#load packages
module load StringTie/2.1.4-GCC-9.3.0

#Transcript assembly: StringTie

array=($(ls *.bam)) #Make an array of sequences to assemble
 
for i in ${array[@]}; do #Running with the -e option to compare output to exclude novel genes. Also output a file with the gene abundances
        sample_name=`echo $i| awk -F [_] '{print $1"_"$2"_"$3}'`
	stringtie -p 8 -e -B -G Mcap.GFFannotation.fixed.gff -A ${sample_name}.gene_abund.tab -o ${sample_name}.gtf ${i}
        echo "StringTie assembly for seq file ${i}" $(date)
done
echo "StringTie assembly COMPLETE, starting assembly analysis" $(date)
```
-p means number of threads/CPUs to use (8 here)

-e means only estimate abundance of given reference transcripts (only genes from the genome) - dont use if using splice variance aware to merge novel and ref based, We have 63227 genes (+1 header) and we have that many rows in our data!

-B means enable output of ballgown table files to be created in same output as GTF

-G means genome reference to be included in the merging 

```
sbatch /data/putnamlab/ashuffmyer/mcap-2020-tagseq/scripts/stringtie.sh
```

# 5. Prep DE  

```
nano /data/putnamlab/ashuffmyer/mcap-2020-tagseq/scripts/prepDE.sh
```

```
#!/bin/bash
#SBATCH -t 120:00:00
#SBATCH --nodes=1 --ntasks-per-node=20
#SBATCH --mem=200GB
#SBATCH --account=putnamlab
#SBATCH --export=NONE
#SBATCH --output="%x_out.%j"
#SBATCH --error="%x_err.%j"
#SBATCH -D /data/putnamlab/ashuffmyer/mcap-2020-tagseq/sequences

#load packages
module load Python/2.7.15-foss-2018b #Python
module load StringTie/2.1.4-GCC-9.3.0

#Transcript assembly: StringTie
module load GffCompare/0.12.1-GCCcore-8.3.0

#Transcript assembly QC: GFFCompare

#make gtf_list.txt file
ls *.gtf > gtf_list.txt

stringtie --merge -p 8 -G Mcap.GFFannotation.fixed.gff -o Mcapitata_merged.gtf gtf_list.txt #Merge GTFs to form $
echo "Stringtie merge complete" $(date)

gffcompare -r Mcap.GFFannotation.fixed.gff -G -o merged Mcapitata_merged.gtf #Compute the accuracy and pre$
echo "GFFcompare complete, Starting gene count matrix assembly..." $(date)

#make gtf list text file
for filename in AH*.gtf; do echo $filename $PWD/$filename; done > listGTF.txt

python ../scripts/prepDE.py -g Mcapitata_gene_count_matrix.csv -i listGTF.txt #Compile the gene count matrix
echo "Gene count matrix compiled." $(date)
```

```
sbatch /data/putnamlab/ashuffmyer/mcap-2020-tagseq/scripts/prepDE.sh
```

Move gene count matrix off of server  

```
scp ashuffmyer@ssh3.hac.uri.edu:/data/putnamlab/ashuffmyer/mcap-2020-tagseq/sequences/Mcapitata_gene_count_matrix.csv ~/MyProjects/EarlyLifeHistory_Energetics/Mcap2020/Output/TagSeq
```


