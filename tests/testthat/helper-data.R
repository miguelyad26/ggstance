
range_df <- data.frame(
  trt = factor(c(1, 1, 2, 2)),
  resp = c(1, 5, 3, 4),
  group = factor(c(1, 2, 1, 2)),
  upper = c(1.1, 5.3, 3.3, 4.2),
  lower = c(0.8, 4.6, 2.4, 3.6)
)

library("ggplot2")
range_p <- ggplot(range_df, aes(resp, trt, color = group))
range_p_orig <- ggplot(range_df, aes(trt, resp, color = group))
