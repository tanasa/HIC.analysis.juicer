#!/bin/bash

############################################
FILE=$1
# script_part15_make_HIC_JUICE_with_HOMER.sh
############################################

module load homer/4.10

### 4.10

# module load homer/4.9

module load bowtie2/2.3.4.3
module load juicer/1.5.4

module load cuda/10.1.168_418.67 
module load bwa/0.7.17
module load hic-pro/2.11.1 

module load homer/4.10

# module load HiCorrector/1.1
# module load hicpipe/0.93

# module load hicup/0.5.2
# module unload hicup/0.5.2

# module load cuda/7.5.18

###################################################################

HG38_INDEX="./bowtie2_genomes/hg38/hg38_genome.bowtie2"

# homerTools trim -3 GATC -mis 0 -matchStart 20 -min 20 $FILE
# bowtie2 -p 20 -x $HG38_INDEX -U $FILE > "${FILE}.hg38.sam"

# makeTagDirectory "${NAME}.HiC.TagDir"/ $FILE1,$FILE2 -tbp 1
# makeTagDirectory  "${NAME}.HiC.TagDir"  $FILE1,$FILE2 -tbp 1 -genome hg38 -checkGC -restrictionSite GATC

# tagDir2hicFile.pl "${NAME}.HiC.TagDir" -juicer auto -genome hg38 -p 10

FILE=$1 

tagDir2hicFile.pl $FILE -juicer "${FILE}.juice.hic" -genome hg38 -p 12
