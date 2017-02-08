#' getdummies
#' Transform categorical variable into model matrix
#' This function allows you to create dummy variables from a multi-level indicator variable
#' @param X categorical variable
#' @return a model matrix of dummies
#' getdummies(X)

getdummies<-function(X){
X=as.factor(X)
length(unique(X))->lev
out=model.matrix(~X)[,2:lev]
return(out)
} 


