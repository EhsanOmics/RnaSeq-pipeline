🧬 RNA-Seq Pipeline

A reproducible and scalable RNA-seq analysis pipeline built with Snakemake and R, designed for differential expression analysis and statistical visualization. This demonstration pipeline simulates a complete RNA-seq workflow from FASTQ to publication-ready plots, ideal for showcasing reproducibility and workflow design.

🚀 Features

- Quality control (FastQC)  
- Alignment (STAR, placeholder)  
- Quantification (featureCounts, placeholder)  
- Differential expression analysis (DESeq2)  
- Statistical plots:
  - Volcano plot  
  - Heatmap  
  - PCA  
  - MA plot  
  - Dispersion plot  
  - Boxplots  

📁 Folder Structure

rnaseq-pipeline/  
├── main/  
│   ├── raw/                  → FASTQ files  
│   ├── qc/                   → FastQC reports  
│   ├── reference/            → STAR index + GTF  
│   ├── aligned/              → BAM files  
│   ├── counts/               → Count tables  
│   ├── results/              → DESeq2 results + dds.RData  
│   └── plots/                → All visualizations  
├── config.yaml               → Sample + group config  
├── Snakefile                 → Snakemake workflow  
├── scripts/                  → All R scripts  
│   ├── run_deseq2.R  
│   ├── plot_volcano.R  
│   ├── plot_heatmap.R  
│   ├── plot_pca.R  
│   ├── plot_ma.R  
│   ├── plot_dispersion.R  
│   └── plot_boxplots.R  
└── README.md  

🧪 How to Run

snakemake --cores 4

This command executes the full pipeline, generating all results and plots. The pipeline is designed to run without real FASTQ data, but is fully compatible with real input.

📊 Visual Outputs

All plots are generated using R and saved in main/plots/:  
- volcano_plot.png  
- heatmap.png  
- pca_plot.png  
- ma_plot.png  
- dispersion_plot.png  
- boxplots.png  

📌 Sample Configuration

Defined in config.yaml:  
- 20 samples total  
- 10 control, 10 treatment  
- Reference genome and GTF paths included  

🧠 About

This pipeline is part of the EhsanOmics initiative, focused on building reproducible bioinformatics workflows and clear scientific communication. It demonstrates practical skills in RNA-seq analysis, Snakemake workflow design, and R-based visualization. The project is intended for demonstration, collaboration, and future integration with real datasets.

📫 Contact

For collaboration or feedback:  
- Email: ejafarinia@gmail.com  
- LinkedIn: https://www.linkedin.com/in/ehsanjafarinia  
- GitHub: https://github.com/ehsanomics  

⚠️ Disclaimer

This pipeline uses placeholder data and simulated steps for demonstration purposes. Replace with real FASTQ files and reference genomes for production use.
