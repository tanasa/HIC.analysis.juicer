module load bwa
module load juicer
module load hic-pro

./ARIMA_HiC_JUICER/juicer/CPU/juicer.sh \
-g hg38 \
-s "MboI" \
-a 'HIC003' \
-p ./ARIMA_HiC_JUICER/juicer/chrom.size.hg38/chrom.size.hg38.txt \
-y ./ARIMA_HiC_JUICER/juicer/restriction_sites_hg38/hg38_MboI.txt \
-z ./ARIMA_HiC_JUICER/juicer/references_bwa_hg38/hg38.fa \
-D ./ARIMA_HiC_JUICER/juicer/human4SLURM \
-t 8

sbatch --mail-user=tanasa@gmail.com --mail-type=ALL -n 4 --time=120:00:00 \
--nodes=1 --mem-per-cpu=20000 \
-J script_arrowhead.sh.sample \
-o script_arrowhead.sh.stdout \
-e script_arrowhead.sh.stderr \
./script_arrowhead.sh chr19


sbatch --mail-user=tanasa@gmail.com --mail-type=ALL --time=120:00:00 \
--partition=nih_s10 --gres=gpu:1 \
-J script_hiccups_allchr_MED_RES_FDR099.sh.sample \
-o script_hiccups_allchr_MED_RES_FDR099.sh.stdout \
-e script_hiccups_allchr_MED_RES_FDR099.sh.stderr \
./script_hiccups_allchr_MED_RES_FDR099.sh

sbatch --mail-user=tanasa@gmail.com --mail-type=ALL --time=120:00:00 \
--partition=nih_s10 --gres=gpu:1 \
-J script_hiccups_allchr_MED_RES_FDR01.sh.sample \
-o script_hiccups_allchr_MED_RES_FDR01.sh.stdout \
-e script_hiccups_allchr_MED_RES_FDR01.sh.stderr \
./script_hiccups_allchr_MED_RES_FDR01.sh

sbatch --mail-user=tanasa@gmail.com --mail-type=ALL --time=120:00:00 \
--partition=nih_s10 --gres=gpu:1 \
-J script_hiccups_allchr_HIGH_RES_FDR099.sh.sample \
-o script_hiccups_allchr_HIGH_RES_FDR099.sh.stdout \
-e script_hiccups_allchr_HIGH_RES_FDR099.sh.stderr \
./script_hiccups_allchr_HIGH_RES_FDR099.sh

sbatch --mail-user=tanasa@gmail.com --mail-type=ALL --time=120:00:00 \
--partition=nih_s10 --gres=gpu:1 \
-J script_hiccups_allchr_HIGH_RES_FDR01.sh.sample \
-o script_hiccups_allchr_HIGH_RES_FDR01.sh.stdout \
-e script_hiccups_allchr_HIGH_RES_FDR01.sh.stderr \
./script_hiccups_allchr_HIGH_RES_FDR01.sh
