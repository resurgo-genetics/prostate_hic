#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH -n 1
#SBATCH --qos=ccmb-condo
#SBATCH --cpus-per-task=8
#SBATCH --mem=64G
#SBATCH -J HiC_ERG_l1_r0
#SBATCH -o /users/bsiranos/projects/prostate_hic/script_outputs/2014-07-05/HiC_ERG_l1_r0.out
#SBATCH -e /users/bsiranos/projects/prostate_hic/script_outputs/2014-07-05/HiC_ERG_l1_r0.err

cd /users/bsiranos/projects/senescence_HiC/src/HiC_analysis_pipeline/
module load hiclib
module load bowtie2
module load samtools

#names of fastqs dont matter, not mapping
python hic_pipeline_complete.py -f /users/bsiranos/data/bsiranos/prostate_hic/sra/SRR493818_1.fastq /users/bsiranos/data/bsiranos/prostate_hic/sra/SRR493818_2.fastq  -n ERG_l1_r0 -m ERG_l1_r0 -o /users/bsiranos/data/bsiranos/prostate_hic/analysis/individual_replicates -a hg19
