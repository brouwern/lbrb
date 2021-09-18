fasta_cleaner <- function(fasta_object, parse = TRUE)
{
  fasta_object <- sub("^(>)(.*?)(\\n)(.*)(\\n\\n)", "\\4",
                      fasta_object)
  fasta_object <- gsub("\n", "", fasta_object)
  if (parse == TRUE) {
    fasta_object <- stringr::str_split(fasta_object, pattern = "",
                                       simplify = FALSE)
  }
  return(fasta_object[[1]])
}
