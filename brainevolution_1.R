library(tidyverse)
library(ape)


# Brain, body, and max local temperature data
# This file came from E:/brain_evolution
data <- read.csv("data.csv", header = TRUE)

mass <- data$mass
brain <- data$brain

# Mammal Phylogeny (xxCitation)
phylo <- "mastermammals.nex"
apephylo <- ape::read.nexus(phylo)
# Use this to plot the trees (there are 3 here), but they are too large to plot
# plot(apephylo)
apephylo[["mammalST_bestDates"]]