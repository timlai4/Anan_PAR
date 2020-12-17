# Anan_PAR

## Owl Monkey (*Aotus nancymaae*) Overview

<img src="img/owlmonkey.jpg" alt="owl monkey" width="400"/>

*A. nancymaae* is a medically relevant primate, as it is infected by *Plasmodium falciparum*.

Reference genome: **Anan_2.0**
- &#35; of scaffolds:  28,922
- &#35; of contigs: 112,851
- N50: 126,456


## Data Retrieval
The reference genome annotation and assembly were downloaded from Ensembl.
```{bash}
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/952/055/GCF_000952055.2_Anan_2.0/GCF_000952055.2_Anan_2.0_genomic.fna.gz
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/952/055/GCF_000952055.2_Anan_2.0/GCF_000952055.2_Anan_2.0_genomic.gff.gz
```

Two samples, one from each sex, were obtained and QC'd
```{bash}
singularity exec -eCB `pwd` -H `pwd` zent_tools_software_v0.4.sif Rscript fetch_data.R
```
The alignment is performed with [bwa-mem2](https://github.com/bwa-mem2/bwa-mem2). 
We can run this in our do_align.sh script. 
