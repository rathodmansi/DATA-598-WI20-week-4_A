---
title: "Class3_tidyverse_rmarkdownn"
author: "Mansi Rathod"
date: "`r format(Sys.time(),'%d %B %Y')`"
output: bookdown::html_document2
bibliography: my_bibliography.bib
---
  
  Here is inline text `r 2 + 2`

```{r starwars-plot, fig.cap = "A ggplot of starwars stuf"}
library(tidyverse)
starwars %>% filter(species == "Human") %>% ggplot() + aes(x = height, y = mass) + geom_point()
```

We can see in figure \@ref(fig:starwars-plot)

```{r starwars-tbl}
starwars %>% filter(species == "Human") %>% select(name,height, mass, homeworld) %>% knitr::kable(caption = "A knitr kable table of starwars data")
```

We can see the figure in Table \@ref(tab:starwars-tbl)

``` {r my-fig, fig.cap = "My non-code figure"}
knitr::include_graphics("uw-w.jpg")
```

We can see the figure at \@ref(fig:my-fig) 

The following is the citation of the research paper 'A developmental perspective on the role of motor skill competence in physical activity: An emergent relationship' by Stodden et al. [@stodden2008developmental].
