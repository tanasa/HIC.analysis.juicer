library(org.Mm.eg.db)
library(AnnotationDbi)

tss = read.delim("mm10.tss", stringsAsFactors=F, sep="\t", header=T)

#> head(tss)
#          gene   chr     start       end strand
#1 NM_001162506 chr15  99072973  99076973      0
#2 NM_001177605  chr4 101417312 101421312      0

x <- mapIds(org.Mm.eg.db,
            keys = tss$gene,
            keytype="REFSEQ", 
            column="SYMBOL", multiVals = "first")

y = as.data.frame(x)
y$refseq = rownames(y)

#> dim(y)
#[1] 43511     2
#> dim(tss)
#[1] 43511     5

tss2 = merge(tss, 
      y, 
      by.x = "gene", 
      by.y = "refseq")

tss3 = subset(tss2, select = c("chr", "start", "end", "x"))

write.table(tss3, 
            file = "tss.annotate.txt", 
            sep="\t", quote = FALSE,
            row.names = FALSE)
              

