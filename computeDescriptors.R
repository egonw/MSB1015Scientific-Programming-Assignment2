computeDescriptors <- function (r, descNames) {
  # 2. Parse smiles and compute descriptors
  smiles <- r$CC
  parsed_smiles <- parse.smiles(smiles, kekulise=TRUE)
  
  descs <- eval.desc(parsed_smiles, descNames)
  return(descs)
}