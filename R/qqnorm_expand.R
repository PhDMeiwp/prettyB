
qqnorm_expand = function(y, ...) {
  ## Set up par
  op = set_par_expand()
  if (requireNamespace("graphics", quietly = TRUE)){
  on.exit(graphics::par(op))}

  new_args = list(pch = 21, bg = 1)
  old_args = list(...)
  new_args[names(old_args)] = old_args
  if (requireNamespace("stats", quietly = TRUE)){
  do.call(stats:::qqnorm.default, c(list(substitute(y)), new_args))}
}

