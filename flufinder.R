upload_fasta <- function(testfasta.txt) {
  
  library(seqinr)
  
  #Reading the fasta file
  read.fasta(testfasta.txt, seqtype = "AA", as.string = TRUE,
             set.attributes = FALSE)}



trypsinize <- function(testfasta) {
  
  library(stringr)
  
  lapply(testfasta, str_split_1, pattern = "(?<=R|K)")
}



split_peptides <- function(peptides) {
  library(stringr)
  lapply(peptides, str_split, pattern = "")}


