library(DESeq2)

# Load count matrix
counts <- read.table("main/counts/counts.txt", header=TRUE, row.names=1)

# Define sample conditions
colData <- data.frame(
  row.names = colnames(counts),
  condition = rep(c("control", "treatment"), each=10)
)

# Create DESeq2 dataset
dds <- DESeqDataSetFromMatrix(countData=counts, colData=colData, design=~condition)

# Run DESeq2
dds <- DESeq(dds)

# Save results
save(dds, file="main/results/dds.RData")
