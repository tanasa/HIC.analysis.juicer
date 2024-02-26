
###########################################################
###########################################################
########################################################### gene CSK 

fancplot \
--width 4 \
-o gene_ENH.png \
1:180mb-183mb \
-p triangular \
sample1_inter_30.hic@10000 \
-vmin 0 \
-vmax 0.05 \
-m 4000000 \
-p gene mm10.genes.intervals.for.FANC \
-p scores sample1_inter_30.hic.insulation \
-p line sample1_inter_30.hic.insulation_1mb.bed \
sample1_inter_30.hic.insulation_2mb.bed \
-l "1mb" "2mb" \
-p bar sample1_inter_30.hic.insulation_1mb.bed \
-p scores sample1_inter_30.hic.directionality

fancplot \
--width 4 \
1:180mb-183mb \
-p triangular \
sample1_inter_30.hic@10000 \
-vmin 0 \
-vmax 0.05 \
-m 4000000 \
-p gene mm10.genes.intervals.for.FANC \
-p scores sample1_inter_30.hic.insulation \
-p line sample1_inter_30.hic.insulation_1mb.bed \
sample1_inter_30.hic.insulation_2mb.bed \
-l "1mb" "2mb" \
-p bar sample1_inter_30.hic.insulation_1mb.bed \
-p scores sample1_inter_30.hic.directionality

###########################################################
###########################################################
########################################################### gene PLXNC1

fancplot \
--width 4 \
-o gene_PLXNC1.png \
10:93mb-96mb \
-p triangular \
sample1_inter_30.hic@10000 \
-vmin 0 \
-vmax 0.05 \
-m 4000000 \
-p gene mm10.genes.intervals.for.FANC \
-p scores sample1_inter_30.hic.insulation \
-p line sample1_inter_30.hic.insulation_1mb.bed \
sample1_inter_30.hic.insulation_2mb.bed \
-l "1mb" "2mb" \
-p bar sample1_inter_30.hic.insulation_1mb.bed \
-p scores sample1_inter_30.hic.directionality

fancplot \
--width 4 \
10:93mb-96mb \
-p triangular \
sample1_inter_30.hic@10000 \
-vmin 0 \
-vmax 0.05 \
-m 4000000 \
-p gene mm10.genes.intervals.for.FANC \
-p scores sample1_inter_30.hic.insulation \
-p line sample1_inter_30.hic.insulation_1mb.bed \
sample1_inter_30.hic.insulation_2mb.bed \
-l "1mb" "2mb" \
-p bar sample1_inter_30.hic.insulation_1mb.bed \
-p scores sample1_inter_30.hic.directionality

###########################################################
###########################################################
########################################################### gene PCDH1 

fancplot \
--width 4 \
-o gene_PCDH1.png \
18:37mb-39mb \
-p triangular \
sample1_inter_30.hic@10000 \
-vmin 0 \
-vmax 0.05 \
-m 4000000 \
-p gene mm10.genes.intervals.for.FANC \
-p scores sample1_inter_30.hic.insulation \
-p line sample1_inter_30.hic.insulation_1mb.bed \
sample1_inter_30.hic.insulation_2mb.bed \
-l "1mb" "2mb" \
-p bar sample1_inter_30.hic.insulation_1mb.bed \
-p scores sample1_inter_30.hic.directionality

fancplot \
--width 4 \
18:37mb-39mb \
-p triangular \
sample1_inter_30.hic@10000 \
-vmin 0 \
-vmax 0.05 \
-m 4000000 \
-p gene mm10.genes.intervals.for.FANC \
-p scores sample1_inter_30.hic.insulation \
-p line sample1_inter_30.hic.insulation_1mb.bed \
sample1_inter_30.hic.insulation_2mb.bed \
-l "1mb" "2mb" \
-p bar sample1_inter_30.hic.insulation_1mb.bed \
-p scores sample1_inter_30.hic.directionality

########################################################### CHR10
###########################################################
########################################################### AB compartments

fancplot \
10 \
-o compartmentsAB.chr10.png \
-p square \
sample1_inter_30.hic.res.500000.ab \
-vmin -0.75 -vmax 0.75 -c RdBu_r

########################################################### CHR18
###########################################################
########################################################### AB compartments

fancplot \
18 \
-o compartmentsAB.chr18.png \
-p square \
sample1_inter_30.hic.res.500000.ab \
-vmin -0.75 -vmax 0.75 -c RdBu_r

###########################################################
###########################################################
###########################################################
########################################################### EIGEN VECTORS

fancplot 10 \
-o compartmentsAB.chr10.EIGENVECTOR.png \
-p square \
sample1_inter_30.hic.res.500000.ab \
-vmin -0.75 -vmax 0.75 -c RdBu_r \
-p line \
sample1_inter_30.hic.res.500000.ev

fancplot 18 \
-o compartmentsAB.chr18.EIGENVECTOR.png \
-p square \
sample1_inter_30.hic.res.500000.ab \
-vmin -0.75 -vmax 0.75 -c RdBu_r \
-p line \
sample1_inter_30.hic.res.500000.ev

###########################################################
###########################################################
###########################################################
###########################################################
########################################################### INSULATION SCORES

fanc insulation \
sample1_inter_30.hic@50000 \
sample1_inter_30.hic.insulation \
-w 1000000 1500000 2000000 2500000 3000000 3500000 4000000

############################################################ displaying TAD
############################################################
############################################################
############################################################ VISUALIZATION

fancplot \
15:10mb-20mb \
-p triangular \
-vmax 0.05 \
-m 500kb \
sample1_inter_30.hic@10000 \
-p gene mm10.reduced.gtf \

fancplot \
9:56mb-58mb \
-p triangular sample1_inter_30.hic@5000 \
-m 4000000 -vmin 0 -vmax 0.2 \
-o fanc_example_100kb_tads.png

###############################################################
###############################################################  including GENES
###############################################################

fancplot 15:10mb-20mb \
-p triangular -vmax 0.05 \
sample1_inter_30.hic@10000 \
-p gene mm10.genes.intervals.for.FANC

###############################################################
###############################################################

fancplot \
--width 6 \
1:180mb-183mb \
-p triangular \
sample1_inter_30.hic@10000 \
-vmin 0 \
-vmax 0.05 \
-m 4000000 \
-p gene mm10.genes.intervals.for.FANC \
-p scores sample1_inter_30.hic.insulation \
-p line sample1_inter_30.hic.insulation_1mb.bed \
sample1_inter_30.hic.insulation_2mb.bed \
-l "1mb" "2mb" \
-p bar sample1_inter_30.hic.insulation_1mb.bed \
-p scores sample1_inter_30.hic.directionality

###########################################################
###########################################################

fancplot 15:10mb-20mb \
-p triangular \
sample1_inter_30.hic@25000 \
-m 4000000 \
-vmin 0 -vmax 0.05 \
-p scores sample1_inter_30.hic.insulation

###########################################################
########################################################### ICE normalization

# Normalisation method used for -n.
# Options are: KR (default) = Knight-Ruiz matrix balancing
# (Fast, accurate, but memory-intensive normalisation);
# ICE = ICE matrix balancing (less accurate, but more memory-efficient);
# VC = vanilla coverage (a single round of ICE balancing);
# VC-SQRT = vanilla coverage square root (reduces overcorrection compared to VC)

fanc hic sample1_inter_30.ex.hic@1000000 \
-b 1mb \
-m ICE \
--deepcopy

###########################################################
########################################################### O/E matrices

fancplot \
15:10mb-20mb \
-p triangular \
-e sample1_inter_30.hic@10000 \
-vmin -2 -vmax 2

###########################################################
###########################################################
###########################################################
########################################################### compartments A and B

fanc compartments fanc \
compartments sample1_inter_30.mcool@1000000 \
sample1_inter_30.mcool_100000_domains sample1_inter_30.mcool_100000_domains

###########################################################
###########################################################

fanc compartments \
-d sample1_inter_30.hic_100000_domains.DOMAINS \
-v sample1_inter_30.hic_100000_domains.EIGENVECTOR \
sample1_inter_30.hic_100000_domains

########################################################### 
########################################################### AB CORRELATION MATRIX

fanc compartments \
sample1_inter_30.hic@500000 \
sample1_inter_30.hic.res.500000.ab

fancplot \
18 \
-p square \
sample1_inter_30.hic.res.500000.ab \
-vmin -0.75 -vmax 0.75 -c RdBu_r

###########################################################
########################################################### EIGEN VECTOR

fanc compartments \
-v sample1_inter_30.hic.res.500000.ev \
sample1_inter_30.hic.res.500000.ab

###########################################################
########################################################### EIGEN VECTOR

fancplot 18 \
-p square \
sample1_inter_30.hic.res.500000.ab \
-vmin -0.75 -vmax 0.75 -c RdBu_r \
-p line \
sample1_inter_30.hic.res.500000.ev

# As GC content has previously been shown to correlate well with compartmentalisation, the eigenvector is oriented
# in such a way that negative entries correspond to ‘B’ (low GC content) and positive entries to ‘A’ (high GC content).

###########################################################
########################################################### AB domains

fanc compartments \
-d sample1_inter_30.hic.res.500000.DOMAINS.bed \
sample1_inter_30.hic.res.500000.ab

###########################################################
########################################################### AB ENRICHMENT PROFILES

fanc compartments \
-e fanc_example_1mb.ab_profile.png \
sample1_inter_30.hic@500000 \
sample1_inter_30.hic.res.500000.ab

########################################################### LOWER RESOLUTION
########################################################### DISPLAYING BOUNDARIES
###########################################################
########################################################### 

fancplot \
15:10mb-30mb \
-p triangular \
sample1_inter_30.hic@25000 \
-m 4000000 -vmin 0 -vmax 0.05 \
-p scores \
sample1_inter_30.hic.directionality

###########################################################
########################################################### 
###########################################################
########################################################### 
