# Anan_PAR-

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
