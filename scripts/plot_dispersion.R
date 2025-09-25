load("main/results/dds.RData")
png("main/plots/dispersion_plot.png")
plotDispEsts(dds)
dev.off()
