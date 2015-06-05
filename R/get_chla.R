#' get_chla
#' 
#' Returns Chl a value that is associated with a given probability of exceedence at the
#' Upper bootstrapped confidence interval
#' 
#' @param cp_obj An object of class condprob is required.
#' @param prob Exceedence probability to return chl a 
#' @export
get_chla <- function(cp_obj,prob){
  transf_chla <- min(cp_obj$X[cp_obj$Upper.CI >= prob])
  return(exp(transf_chla))
}