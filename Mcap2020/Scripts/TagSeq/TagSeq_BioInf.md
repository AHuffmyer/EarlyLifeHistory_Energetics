# Mcap Early Life Gene Expression
UTGSAF JA 21284

# Sequencing INfo
   
Project ID: 286942669

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
