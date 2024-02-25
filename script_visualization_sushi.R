
library("Sushi")

################# reading the MATRICES for HIC data 

WT <- as.matrix(read.table("TCCBrainWTprocessedmatrixchr6.txt-process",header=T,row.names=1, check.names=FALSE))
KO <- as.matrix(read.table("TCCBrainKOprocessedmatrixchr6.txt-process",header=T,row.names=1, check.names=FALSE))


################ reading the coordinates to display : an example

chrom <- "chr6"
chromstart <- 22460076
chromend <- 28459925

i <- chromstart
j <- chromend

################ making the PLOTS and saving it as PNG image 


png(paste0("WT-and-KO-HiC-", chrom, "-", chromstart, "-", chromend, "_display_13may2016_inspect_06july2019.png"),width=2000,height=1000)

par(mfrow=c(2,1))
par(mar=c(1,1,1,1))
par(mgp=c(3,.5,0))

phic_WT = plotHic(WT, chrom=chrom, chromstart=i, chromend=j)
addlegend(phic_WT[[1]], palette=phic_WT[[2]], title="intensity", side="right", bottominset=0.4, topinset=0, xoffset=-.035,    
          labelside="left", width=0.025, title.offset=0.035)
labelgenome(chrom, chromstart, chromend, n=4, scale="bp", edgeblankfraction=0.20)

phic_KO = plotHic(KO, chrom=chrom, chromstart=i, chromend=j, flip=TRUE)
addlegend(phic_KO[[1]], palette=phic_WT[[2]], title="intensity", side="right", bottominset=0.4, topinset=0, xoffset=-.035,    
          labelside="left", width=0.025, title.offset=0.035)
#addlegend(phic_KO[[1]], palette=phic_KO[[2]], title="intensity", side="right", bottominset=0.4, topinset=0, xoffset=-.035,    
#          labelside="left", width=0.025, title.offset=0.035)
#labelgenome(chrom, chromstart, chromend, n=4, scale="bp", edgeblankfraction=0.20)

dev.off()
