# This function extracts smiles from query results object and computes descriptors
# based on a selected list of descriptors. 
computeDescriptors <- function (r, descNames) {
  smiles <- r$CC
  parsed_smiles <- parse.smiles(smiles, kekulise=TRUE)
  
  descs <- eval.desc(parsed_smiles, descNames)
  return(descs)
}