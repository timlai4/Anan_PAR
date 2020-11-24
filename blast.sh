#!/bin/bash
set -e
set -u
set -o pipefail

makeblastdb -in NC_000023.11.fasta -dbtype nucl -parse_seqids -out blastdb/human_x 

blastn -db blastdb/human_x -query GCF_000952055.2_Anan_2.0_genomic.fna -out blast.out -evalue 1e-2 -num_threads 24

