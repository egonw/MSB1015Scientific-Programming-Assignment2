# This function takes a dataset as input and removes constant columns
removeConstantDesc <- function (descs) {
  constant <- names(descs[,apply(descs, 2, sd, na.rm=TRUE) != 0])
  descs <- descs[, names(descs) %in% constant]
}