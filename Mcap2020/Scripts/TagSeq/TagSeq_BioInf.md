# Mcap Early Life Gene Expression
UTGSAF JA 21284

# Sequencing Info
   
Project ID: 286942669


# Data download from UTGSAF
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


# Data QC

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












