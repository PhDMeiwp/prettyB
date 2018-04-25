#' @export "qqnorm.default"
qqnorm.default = function(y, ...) {
  theme = cache$theme
  if(theme == "expand") {
    qqnorm_expand(y, ...)
  } else if(theme == "minimal") {
    qqnorm_minimal(y, ...)
  }
}

#' @import stats
#' @export
qqline = function(y, ...) {
  new_args = list(lty=3, col=2, lwd=2)
  old_args = list(...)
  new_args[names(old_args)] = old_args
  if (requireNamespace("stats", quietly = TRUE)){
  do.call(stats::qqline, c(list(substitute(y)), new_args))}
}
