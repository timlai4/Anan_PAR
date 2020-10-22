#!/bin/bash
set -e
set -u
set -o pipefail

curl -L https://github.com/bwa-mem2/bwa-mem2/releases/download/v2.0pre2/bwa-mem2-2.0pre2_x64-linux.tar.bz2 \
  | tar jxf -
bwa-mem2-2.0pre2_x64-linux/bwa-mem2 index GCF_000952055.2_Anan_2.0_genomic.fna.gz

bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 4 GCF_000952055.2_Anan_2.0_genomic.fna.gz SRR7608134/* > SRR7608134.sam &
bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 4 GCF_000952055.2_Anan_2.0_genomic.fna.gz SRR7608133/* > SRR7608133.sam
