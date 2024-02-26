module load bwa
module load juicer
module load hic-pro


CHR="all"
CHR_HUMAN="chr1,chr2,chr3,chr4,chr5,chr6,chr7,chr8,chr9,chr10,chr11,chr12,chr13,chr14,chr15,chr16,chr17,chr18,chr19,chr20,chr21,chr22,chrX"
CHR_MOUSE="chr1,chr2,chr3,chr4,chr5,chr6,chr7,chr8,chr9,chr10,chr11,chr12,chr13,chr14,chr15,chr16,chr17,chr18,chr19,chrX"

matrixSize=512
R="5000,10000,25000"

# K="KR"
# K="VC"
# K="VC_SQRT"

FDR="0.1,0.1,0.1"
P="4,2,1"
I="7,5,3"
T="0.02,1.5,1.75,2"
D="20000,20000,50000"

#############################################################################################################

K="KR"

java -jar ./ARIMA_HiC_JUICER/juicer/SLURM/scripts/common/juicer_tools.jar hiccups \
-c $CHR_HUMAN \
-m $matrixSize \
-r $R \
-k $K \
-f $FDR \
--cpu \
--threads 4 \
--ignore_sparsity \
./aligned/inter.hic \
"hiccups.${CHR}.${matrixSize}.${R}.${K}.${FDR}.${P}.${I}.${T}.${D}"

###################################################################
###################################################################


