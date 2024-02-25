##############################################################################################
##############################################################################################
####################################### in the R script ###################################### 
######### to select_and_annotate_the_INTERACTIONS :

# [1] "H3K27ac.mm10.RGC.ENHANCERS.bed"                     
# [2] "mm10.tss.genes.txt"                                 
# [3] "sample1.high.KR.bedpe.loop1.sort"                   
# [4] "sample1.high.KR.bedpe.loop1.sort.ENH"               
# [5] "sample1.high.KR.bedpe.loop1.sort.TSS"               
# [6] "sample1.high.KR.bedpe.loop1.txt"                    
# [7] "sample1.high.KR.bedpe.loop2.sort"                   
# [8] "sample1.high.KR.bedpe.loop2.sort.ENH"               
# [9] "sample1.high.KR.bedpe.loop2.sort.TSS"               
# [10] "sample1.high.KR.bedpe.loop2.txt"    

##############################################################################################
##############################################################################################
##############################################################################################
##############################################################################################

loop1.ENH = read.delim("sample1.high.KR.bedpe.loop1.sort.ENH", sep="\t", header=T, stringsAsFactors=F)              
loop1.TSS = read.delim("sample1.high.KR.bedpe.loop1.sort.TSS", sep="\t", header=T, stringsAsFactors=F)               
                                        
loop2.ENH = read.delim("sample1.high.KR.bedpe.loop2.sort.ENH", sep="\t", header=T, stringsAsFactors=F)               
loop2.TSS = read.delim("sample1.high.KR.bedpe.loop2.sort.TSS", sep="\t", header=T, stringsAsFactors=F) 

##############################################################################################
##############################################################################################
colnames(loop1.ENH)
colnames(loop1.TSS)

colnames(loop2.ENH)
colnames(loop1.TSS)
##############################################################################################
##############################################################################################
dim(loop1.ENH)
dim(loop1.TSS)

dim(loop2.ENH)
dim(loop1.TSS)
##############################################################################################
##############################################################################################

#> colnames(loop1.ENH)
# [1] "chrA"        "startA"      "endA"        "nameA"       "NAMEA"      
# [6] "scoreA"      "A_chr_ENH"   "A_start_ENH" "A_end_ENH"   "A_ENH"      
#[11] "A_ENH_DIST" 
#> colnames(loop1.TSS)
# [1] "chrA"        "startA"      "endA"        "nameA"       "NAMEA"      
# [6] "scoreA"      "A_chr_TSS"   "A_start_TSS" "A_end_TSS"   "A_TSS"      
#[11] "A_TSS_DIST" 
#> 
#> colnames(loop2.ENH)
# [1] "chrB"        "startB"      "endB"        "nameB"       "NAMEB"      
# [6] "scoreB"      "B_chr_ENH"   "B_start_ENH" "B_end_ENH"   "B_ENH"      
#[11] "B_ENH_DIST" 
#> colnames(loop1.TSS)
# [1] "chrA"        "startA"      "endA"        "nameA"       "NAMEA"      
# [6] "scoreA"      "A_chr_TSS"   "A_start_TSS" "A_end_TSS"   "A_TSS"      
#[11] "A_TSS_DIST" 

##############################################################################################
##############################################################################################

loop1.ENH.loop1.TSS = merge(loop1.ENH, 
                            loop1.TSS, 
                            by.x = "NAMEA",  
                            by.y = "NAMEA")

dim(loop1.ENH)
dim(loop1.TSS)

# dim(loop1.ENH.loop1.TSS)
# [1] 22225    21

dim(loop2.ENH)
dim(loop2.TSS)

loop2.ENH.loop2.TSS = merge(loop2.ENH, 
                            loop2.TSS, 
                            by.x = "NAMEB",  
                            by.y = "NAMEB")

dim(loop2.ENH)
dim(loop2.TSS)

# dim(loop2.ENH.loop2.TSS)
# [1] 22225    21

##############################################################################################
##############################################################################################
#> colnames(loop1.ENH.loop1.TSS)
# [1] "NAMEA"       "chrA.x"      "startA.x"    "endA.x"      "nameA.x"    
# [6] "scoreA.x"    "A_chr_ENH"   "A_start_ENH" "A_end_ENH"   "A_ENH"      
# [11] "A_ENH_DIST"  "chrA.y"      "startA.y"    "endA.y"      "nameA.y"    
# [16] "scoreA.y"    "A_chr_TSS"   "A_start_TSS" "A_end_TSS"   "A_TSS"      
# [21] "A_TSS_DIST
##############################################################################################
##############################################################################################
#> colnames(loop2.ENH.loop2.TSS)
# [1] "NAMEB"       "chrB.x"      "startB.x"    "endB.x"      "nameB.x"    
# [6] "scoreB.x"    "B_chr_ENH"   "B_start_ENH" "B_end_ENH"   "B_ENH"      
#[11] "B_ENH_DIST"  "chrB.y"      "startB.y"    "endB.y"      "nameB.y"    
#[16] "scoreB.y"    "B_chr_TSS"   "B_start_TSS" "B_end_TSS"   "B_TSS"      
#[21] "B_TSS_DIST"
##############################################################################################
##############################################################################################

dim(loop1.ENH.loop1.TSS)
dim(loop2.ENH.loop2.TSS)

##############################################################################################
##############################################################################################

loop1.ENH.loop1.TSS.loop2.ENH.loop2.TSS = merge(loop1.ENH.loop1.TSS, 
                                                loop2.ENH.loop2.TSS, 
                                                by.x = "NAMEA",  
                                                by.y = "NAMEB")

##############################################################################################
##############################################################################################

colnames(loop1.ENH.loop1.TSS.loop2.ENH.loop2.TSS)
# [1] "NAMEA"       "chrA.x"      "startA.x"    "endA.x"      "nameA.x"    
# [6] "scoreA.x"    "A_chr_ENH"   "A_start_ENH" "A_end_ENH"   "A_ENH"      
#[11] "A_ENH_DIST"  "chrA.y"      "startA.y"    "endA.y"      "nameA.y"    
#[16] "scoreA.y"    "A_chr_TSS"   "A_start_TSS" "A_end_TSS"   "A_TSS"      
#[21] "A_TSS_DIST"  "chrB.x"      "startB.x"    "endB.x"      "nameB.x"    
#[26] "scoreB.x"    "B_chr_ENH"   "B_start_ENH" "B_end_ENH"   "B_ENH"      
#[31] "B_ENH_DIST"  "chrB.y"      "startB.y"    "endB.y"      "nameB.y"    
#[36] "scoreB.y"    "B_chr_TSS"   "B_start_TSS" "B_end_TSS"   "B_TSS"      
#[41] "B_TSS_DIST"

##############################################################################################
##############################################################################################

write.table(loop1.ENH.loop1.TSS.loop2.ENH.loop2.TSS, 
           file="results.INTEGRATED.txt",   
           sep="\t", quote=FALSE, row.names=FALSE) 

##############################################################################################
##############################################################################################
##############################################################################################
##############################################################################################

# the columns to select are :
#NAMEA	
#chrA.x	
#startA.x	
#endA.x	
#nameA.x	
#scoreA.x
#A_chr_ENH
#A_start_ENH
#A_end_ENH
#A_ENH
#A_ENH_DIST
#A_chr_TSS
#A_start_TSS	
#A_end_TSS	
#A_TSS	
#A_TSS_DIST	

#chrB.x	
#startB.x	
#endB.x	
#nameB.x	
#scoreB.x	
#B_chr_ENH
#B_start_ENH
#B_end_ENH
#B_ENH
#B_ENH_DIST
#B_chr_TSS
#B_start_TSS
#B_end_TSS
#B_TSS
#B_TSS_DIST


loop1.ENH.loop1.TSS.loop2.ENH.loop2.TSS.selected = subset(loop1.ENH.loop1.TSS.loop2.ENH.loop2.TSS, 
select = c("NAMEA", 	
"chrA.x",	
"startA.x",	
"endA.x",	
# "nameA.x",	
"scoreA.x",
"A_chr_ENH",
"A_start_ENH",
"A_end_ENH",
"A_ENH",
"A_ENH_DIST",
"A_chr_TSS",
"A_start_TSS",	
"A_end_TSS",	
"A_TSS",	
"A_TSS_DIST",	

"chrB.x",	
"startB.x",	
"endB.x",	
#"nameB.x",	
#"scoreB.x",	
"B_chr_ENH",
"B_start_ENH",
"B_end_ENH",
"B_ENH",
"B_ENH_DIST",
"B_chr_TSS",
"B_start_TSS",
"B_end_TSS",
"B_TSS",
"B_TSS_DIST"))

write.table(loop1.ENH.loop1.TSS.loop2.ENH.loop2.TSS.selected, 
           file="results.INTEGRATED.simple.txt",   
           sep="\t", quote=FALSE, row.names=FALSE) 
    
##############################################################################################
##############################################################################################
##############################################################################################
##############################################################################################
# and to consider a MAX DISTANCE of 20 KB for the following categories :
# A_ENH_DIST
# A_TSS_DIST
# B_ENH_DIST
# B_TSS_DIST

loop1.ENH.loop1.TSS.loop2.ENH.loop2.TSS.selected.20 = subset(loop1.ENH.loop1.TSS.loop2.ENH.loop2.TSS.selected, 
A_ENH_DIST < 20000 & A_TSS_DIST < 20000 & B_ENH_DIST < 20000 & B_TSS_DIST < 20000)

dim(loop1.ENH.loop1.TSS.loop2.ENH.loop2.TSS.selected)
dim(loop1.ENH.loop1.TSS.loop2.ENH.loop2.TSS.selected.20)

write.table(loop1.ENH.loop1.TSS.loop2.ENH.loop2.TSS.selected.20, 
           file="results.INTEGRATED.simple.distance.20kb.txt",   
           sep="\t", quote=FALSE, row.names=FALSE) 

##############################################################################################
##############################################################################################
##############################################################################################
##############################################################################################
# to introduce some supplem COLUMNS :
# selected ELEMENT

# element1.chr
# element1.start
# element1.end
# element1.gene
# element1.distace
# element1.element (that can be enhancer or TSS)

# element2.chr
# element2.start
# element2.end
# element2.gene
# element2.distace
# element2.element (that can be enhancer or TSS)

x = loop1.ENH.loop1.TSS.loop2.ENH.loop2.TSS.selected.20

#> colnames(x)
# [1] "NAMEA"       "chrA.x"      "startA.x"    "endA.x"      "scoreA.x"   
# [6] "A_chr_ENH"   "A_start_ENH" "A_end_ENH"   "A_ENH"       "A_ENH_DIST" 
#[11] "A_chr_TSS"   "A_start_TSS" "A_end_TSS"   "A_TSS"       "A_TSS_DIST" 
#[16] "chrB.x"      "startB.x"    "endB.x"      "B_chr_ENH"   "B_start_ENH"
#[21] "B_end_ENH"   "B_ENH"       "B_ENH_DIST"  "B_chr_TSS"   "B_start_TSS"
#[26] "B_end_TSS"   "B_TSS"       "B_TSS_DIST" 

##############################################################################################
##############################################################################################

# x$ <- ifelse(A_ENH_DIST < A_TSS_DIST, , )

x$element1.chr   <- ifelse(x$A_ENH_DIST < x$A_TSS_DIST,    x$A_chr_ENH,    x$A_chr_TSS )
x$element1.start <- ifelse(x$A_ENH_DIST < x$A_TSS_DIST,    x$A_start_ENH,  x$A_start_TSS )
x$element1.end   <- ifelse(x$A_ENH_DIST < x$A_TSS_DIST,    x$A_end_ENH,    x$A_end_TSS)
x$element1.gene  <- ifelse(x$A_ENH_DIST < x$A_TSS_DIST,    x$A_ENH,        x$A_TSS)
x$element1.distace  <- ifelse(x$A_ENH_DIST < x$A_TSS_DIST, x$A_ENH_DIST,   x$A_TSS_DIST)
x$element1.element  <- ifelse(x$A_ENH_DIST < x$A_TSS_DIST, "ENH",        "TSS" )

x$element2.chr   <- ifelse(x$B_ENH_DIST < x$B_TSS_DIST,    x$B_chr_ENH,    x$B_chr_TSS )
x$element2.start <- ifelse(x$B_ENH_DIST < x$B_TSS_DIST,    x$B_start_ENH,  x$B_start_TSS )
x$element2.end   <- ifelse(x$B_ENH_DIST < x$B_TSS_DIST,    x$B_end_ENH,    x$B_end_TSS)
x$element2.gene  <- ifelse(x$B_ENH_DIST < x$B_TSS_DIST,    x$B_ENH,        x$B_TSS)
x$element2.distace  <- ifelse(x$B_ENH_DIST < x$B_TSS_DIST, x$B_ENH_DIST,   x$B_TSS_DIST)
x$element2.element  <- ifelse(x$B_ENH_DIST < x$B_TSS_DIST, "ENH",        "TSS" )

##############################################################################################
##############################################################################################

write.table(x, 
           file="results.INTEGRATED.simple.distance.20kb.element.chosen.txt",   
           sep="\t", quote=FALSE, row.names=FALSE) 

##############################################################################################
##############################################################################################

#> colnames(x)
# [1] "NAMEA"            "chrA.x"           "startA.x"         "endA.x"          
# [5] "scoreA.x"         "A_chr_ENH"        "A_start_ENH"      "A_end_ENH"       
# [9] "A_ENH"            "A_ENH_DIST"       "A_chr_TSS"        "A_start_TSS"     
#[13] "A_end_TSS"        "A_TSS"            "A_TSS_DIST"       "chrB.x"          
#[17] "startB.x"         "endB.x"           "B_chr_ENH"        "B_start_ENH"     
#[21] "B_end_ENH"        "B_ENH"            "B_ENH_DIST"       "B_chr_TSS"       
#[25] "B_start_TSS"      "B_end_TSS"        "B_TSS"            "B_TSS_DIST"      
#[29] "element1.chr"     "element1.start"   "element1.end"     "element1.gene"   
#[33] "element1.distace" "element1.element" "element2.chr"     "element2.start"  
#[37] "element2.end"     "element2.gene"    "element2.distace" "element2.element"

##############################################################################################
##############################################################################################

y = subset(x, select = c("NAMEA", 	
"chrA.x",	
"startA.x",	
"endA.x",	
"scoreA.x",
"element1.chr",     
"element1.start",   
"element1.end",     
"element1.gene",   
"element1.distace", 
"element1.element", 
"chrB.x",	
"startB.x",	
"endB.x",	
"element2.chr",     
"element2.start",  
"element2.end",     
"element2.gene",    
"element2.distace", 
"element2.element"))

write.table(y, 
           file="results.INTEGRATED.simple.distance.20kb.element.one.txt",   
           sep="\t", quote=FALSE, row.names=FALSE) 

##############################################################################################
##############################################################################################
##############################################################################################
##############################################################################################
# in order to SELECT and COUNT the TYPES of TSS-ENH, TSS-TSS, ENH-TSS interactions, to do :

z = y

dim(x)
dim(y)
dim(z)

write.table(paste("the number of interactions within 20kb of a promoter and of enhancer :", 
            dim(x), sep="\t"), 
            file = "results.the.summary.of.the.analysis.txt",
            append = TRUE, quote= FALSE, sep="\t", row.names = FALSE)   

z$type = paste(z$element1.element, z$element2.element, sep=":")   

table(z$type) 

as.data.frame(table(z$type))

#     Var1 Freq
#1 ENH:ENH  734
#2 ENH:TSS  747
#3 TSS:ENH  766
#4 TSS:TSS  904

##############################################################################################
##############################################################################################

write.table("the number of INTERACTION TYPES within 20kb of a promoter and of an enhancer:", 
            file = "results.the.summary.of.the.analysis.txt",
            append = TRUE, quote= FALSE, sep="\t", row.names = FALSE)   

write.table(as.data.frame(table(z$type)), 
            file = "results.the.summary.of.the.analysis.txt",
            append = TRUE, quote= FALSE, sep="\t", row.names = FALSE) 

##############################################################################################
##############################################################################################
##############################################################################################
##############################################################################################