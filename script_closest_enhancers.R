# FILE="sample1.high.KR.bedpe.loop1.txt"
# FILE="sample1.high.KR.bedpe.loop2.txt"

FILE=$1

sortBed -i $FILE > "${FILE%.txt}.sort"

closestBed -a "${FILE%.txt}.sort" \
-b mm10.tss.genes.txt \
-d -t first \
> "${FILE%.txt}.sort.TSS"

closestBed -a "${FILE%.txt}.sort" \
-b H3K27ac.mm10.RGC.ENHANCERS.txt \
-d -t first \
> "${FILE%.txt}.sort.ENH"
