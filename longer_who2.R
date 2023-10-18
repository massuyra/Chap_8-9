library(tidyverse)
view(who2)
longer_who2 <- who2 %>%
  pivot_longer(
    cols = !c("country", "year"),
    names_to = c("diagnosis", "gender", "age"),
    names_sep = "_",
    values_to = "count"
  )
view(longer_who2)
