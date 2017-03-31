# Titanic data in alluvium form
titanic_alluvia <- as.data.frame(Titanic)
is_alluvial.alluvia(titanic_alluvia,
                    weight = "Freq")

# Titanic data in lode form
titanic_lodes <- suppressWarnings(tidyr::gather(
  dplyr::mutate(titanic_alluvia, Index = 1:nrow(titanic_alluvia)),
  "Variable", "Value", axes = 1:4, factor_key = TRUE
))
is_alluvial.lodes(titanic_lodes,
                  key = "Variable", value = "Value", id = "Index",
                  weight = "Freq")