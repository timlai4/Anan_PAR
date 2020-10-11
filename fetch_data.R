library("ZentTools")

samples <- data.frame(
  sample_name = c("Female", "Male"), 
  file_1 = c("SRR7608135", "SRR7608134")
  file_2 = rep(NA, 2)
)
zent <- zent_tools(
		     analysis_type = "RNA-seq", sample_sheet = samples,
		       paired = TRUE, ncores = 8
		     )
zent <- retrieve_reads(zent, outdir = "./")
zent <- fastqc(zent, outdir = "./fastqc_reports")

