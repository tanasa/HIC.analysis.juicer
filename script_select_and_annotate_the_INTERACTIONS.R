##############################################################################################
##############################################################################################
####################################### in the R script ###################################### 
######### to select_and_annotate_the_INTERACTIONS :

# [2] "sample1.hiccups.all.512.5000,10000.KR.0.99,0.99.4,2.7,5.0.02,1.5,1.75,2.20000,20000,50000.highres.merged_loops.bedpe"     
# [3] "sample1.hiccups.all.512.5000,10000.VC_SQRT.0.99,0.99.4,2.7,5.0.02,1.5,1.75,2.20000,20000,50000.highres.merged_loops.bedpe"
# [4] "sample1.hiccups.all.512.5000,10000.VC.0.99,0.99.4,2.7,5.0.02,1.5,1.75,2.20000,20000,50000.highres.merged_loops.bedpe"     
# [5] "sample2.hiccups.all.512.5000,10000.KR.0.99,0.99.4,2.7,5.0.02,1.5,1.75,2.20000,20000,50000.highres.merged_loops.bedpe"     
# [6] "sample2.hiccups.all.512.5000,10000.VC_SQRT.0.99,0.99.4,2.7,5.0.02,1.5,1.75,2.20000,20000,50000.highres.merged_loops.bedpe"
# [7] "sample2.hiccups.all.512.5000,10000.VC.0.99,0.99.4,2.7,5.0.02,1.5,1.75,2.20000,20000,50000.highres.merged_loops.bedpe" 

A = "sample1.high.KR.bedpe"     
B = "sample1.high.VC.bedpe"
C = "sample1.high.VC_SQRT.bedpe"     
D = "sample2.high.KR.bedpe"     
E = "sample2.high.VC.bedpe"
F = "sample2.high.VC_SQRT.bedpe"

a = read.delim(A, header=T, sep="\t")
b = read.delim(B, header=T, sep="\t")
c = read.delim(C, header=T, sep="\t")
d = read.delim(D, header=T, sep="\t")
e = read.delim(E, header=T, sep="\t")
f = read.delim(F, header=T, sep="\t")

##############################################################################################
##############################################################################################

# colnames(a)
# [1] "chr1"          "x1"            "x2"            "chr2"         
# [5] "y1"            "y2"            "name"          "score"        
# [9] "strand1"       "strand2"       "color"         "observed"     
#[13] "expectedBL"    "expectedDonut" "expectedH"     "expectedV"    
#[17] "fdrBL"         "fdrDonut"      "fdrH"          "fdrV"         
#[21] "numCollapsed"  "centroid1"     "centroid2"     "radius"  

##############################################################################################
##############################################################################################
# to add the CHROM to the the names of the chromosomes
##############################################################################################
##############################################################################################

a$chr1 = paste("chr", a$chr1 , sep="")
a$chr2 = paste("chr", a$chr2 , sep="")

b$chr1 = paste("chr", b$chr1 , sep="")
b$chr2 = paste("chr", b$chr2 , sep="")

c$chr1 = paste("chr", c$chr1 , sep="")
c$chr2 = paste("chr", c$chr2 , sep="")

d$chr1 = paste("chr", d$chr1 , sep="")
d$chr2 = paste("chr", d$chr2 , sep="")

e$chr1 = paste("chr", e$chr1 , sep="")
e$chr2 = paste("chr", e$chr2 , sep="")

f$chr1 = paste("chr", f$chr1 , sep="")
f$chr2 = paste("chr", f$chr2 , sep="")

##############################################################################################
##############################################################################################

a$chr1_name = paste(a$chr1, a$x1, a$x2, sep="_")
a$chr2_name = paste(a$chr2, a$y1, a$y2, sep="_")
a$chr3_name = paste(a$chr1_name, a$chr2_name, sep="_")

b$chr1_name = paste(b$chr1, b$x1, b$x2, sep="_")
b$chr2_name = paste(b$chr2, b$y1, b$y2, sep="_")
b$chr3_name = paste(b$chr1_name, b$chr2_name, sep="_")

c$chr1_name = paste(c$chr1, c$x1, c$x2, sep="_")
c$chr2_name = paste(c$chr2, c$y1, c$y2, sep="_")
c$chr3_name = paste(c$chr1_name, c$chr2_name, sep="_")

d$chr1_name = paste(d$chr1, d$x1, d$x2, sep="_")
d$chr2_name = paste(d$chr2, d$y1, d$y2, sep="_")
d$chr3_name = paste(d$chr1_name, d$chr2_name, sep="_")

e$chr1_name = paste(e$chr1, e$x1, e$x2, sep="_")
e$chr2_name = paste(e$chr2, e$y1, e$y2, sep="_")
e$chr3_name = paste(e$chr1_name, e$chr2_name, sep="_")

f$chr1_name = paste(f$chr1, f$x1, f$x2, sep="_")
f$chr2_name = paste(f$chr2, f$y1, f$y2, sep="_")
f$chr3_name = paste(f$chr1_name, f$chr2_name, sep="_")

##############################################################################################
##############################################################################################

ax = subset(a, select = c(chr1, x1, x2, chr1_name, chr3_name, observed))
ay = subset(a, select = c(chr2, y1, y2, chr2_name, chr3_name, observed)) 

write.table(ax, 
            file = paste(A, "loop1", "txt", sep="."), 
            quote = FALSE, sep="\t",   
            row.names = FALSE, col.names = T)

write.table(ay, 
            file = paste(A, "loop2", "txt", sep="."), 
            quote = FALSE, sep="\t",   
            row.names = FALSE, col.names = T)
   
##############################################################################################
##############################################################################################

bx = subset(b, select = c(chr1, x1, x2, chr1_name, chr3_name, observed))
by = subset(b, select = c(chr2, y1, y2, chr2_name, chr3_name, observed)) 

write.table(bx, 
            file = paste(B, "loop1", "txt", sep="."), 
            quote = FALSE, sep="\t",   
            row.names = FALSE, col.names = T)

write.table(by, 
            file = paste(B, "loop2", "txt", sep="."), 
            quote = FALSE, sep="\t",   
            row.names = FALSE, col.names = T)

##############################################################################################
##############################################################################################

cx = subset(c, select = c(chr1, x1, x2, chr1_name, chr3_name, observed))
cy = subset(c, select = c(chr2, y1, y2, chr2_name, chr3_name, observed)) 

write.table(cx, 
            file = paste(C, "loop1", "txt", sep="."), 
            quote = FALSE, sep="\t",   
            row.names = FALSE, col.names = T)

write.table(cy, 
            file = paste(C, "loop2", "txt", sep="."), 
            quote = FALSE, sep="\t",   
            row.names = FALSE, col.names = T)

##############################################################################################
##############################################################################################

dx = subset(d, select = c(chr1, x1, x2, chr1_name, chr3_name, observed))
dy = subset(d, select = c(chr2, y1, y2, chr2_name, chr3_name, observed)) 

write.table(dx, 
            file = paste(D, "loop1", "txt", sep="."), 
            quote = FALSE, sep="\t",   
            row.names = FALSE, col.names = T)

write.table(dy, 
            file = paste(D, "loop2", "txt", sep="."), 
            quote = FALSE, sep="\t",   
            row.names = FALSE, col.names = T)

##############################################################################################
##############################################################################################

ex = subset(e, select = c(chr1, x1, x2, chr1_name, chr3_name, observed))
ey = subset(e, select = c(chr2, y1, y2, chr2_name, chr3_name, observed)) 

write.table(ex, 
            file = paste(E, "loop1", "txt", sep="."), 
            quote = FALSE, sep="\t",   
            row.names = FALSE, col.names = T)

write.table(ey, 
            file = paste(E, "loop2", "txt", sep="."), 
            quote = FALSE, sep="\t",   
            row.names = FALSE, col.names = T)

##############################################################################################
##############################################################################################

fx = subset(f, select = c(chr1, x1, x2, chr1_name, chr3_name, observed))
fy = subset(f, select = c(chr2, y1, y2, chr2_name, chr3_name, observed)) 

write.table(fx, 
            file = paste(F, "loop1", "txt", sep="."), 
            quote = FALSE, sep="\t",   
            row.names = FALSE, col.names = T)

write.table(fy, 
            file = paste(F, "loop2", "txt", sep="."), 
            quote = FALSE, sep="\t",   
            row.names = FALSE, col.names = T)

##############################################################################################
##############################################################################################

##############################################################################################
##############################################################################################

##############################################################################################
##############################################################################################

#> colnames(a)
# [1] "chr1"        "x1"            "x2"            "chr2"         
# [5] "y1"            "y2"            "name"          "score"        
# [9] "strand1"       "strand2"       "color"         "observed"     
#[13] "expectedBL"    "expectedDonut" "expectedH"     "expectedV"    
#[17] "fdrBL"         "fdrDonut"      "fdrH"          "fdrV"         
#[21] "numCollapsed"  "centroid1"     "centroid2"     "radius"       
 
#> colnames(b)
# [1] "chr1"        "x1"            "x2"            "chr2"         
# [5] "y1"            "y2"            "name"          "score"        
# [9] "strand1"       "strand2"       "color"         "observed"     
#[13] "expectedBL"    "expectedDonut" "expectedH"     "expectedV"    
#[17] "fdrBL"         "fdrDonut"      "fdrH"          "fdrV"         
#[21] "numCollapsed"  "centroid1"     "centroid2"     "radius"

##############################################################################################
##############################################################################################

##############################################################################################
##############################################################################################