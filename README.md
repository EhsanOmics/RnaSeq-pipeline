🧬 RNA-Seq Pipeline

A reproducible and scalable RNA-seq analysis pipeline built with Snakemake and R, designed for differential expression analysis and statistical visualization. This mock pipeline simulates a full RNA-seq workflow from FASTQ to publication-ready plots, ideal for showcasing reproducibility, workflow design, and scientific branding.

---

🚀 Features

- Quality control (FastQC)  
- Alignment (STAR, placeholder)  
- Quantification (featureCounts, placeholder)  
- Differential expression analysis (DESeq2)  
- Statistical plots: volcano plot, heatmap, PCA, MA plot, dispersion plot, boxplots

---

📁 Folder Structure

rnaseq-pipeline/  
├── README.md – Project description and instructions  
├── Snakefile – Snakemake workflow  
├── config.yaml – Sample and group configuration  
├── scripts/ – R scripts for DESeq2 and plotting  
│ ├── run_deseq2.R  
│ ├── plot_volcano.R  
│ ├── plot_heatmap.R  
│ ├── plot_pca.R  
│ ├── plot_ma.R  
│ ├── plot_dispersion.R  
│ └── plot_boxplots.R  
└── data/ – Input and output files  
  ├── raw/ – FASTQ files  
  ├── qc/ – FastQC reports  
  ├── reference/ – Genome and GTF files  
  ├── aligned/ – BAM files  
  ├── counts/ – Count matrix  
  ├── results/ – DESeq2 output (dds.RData)  
  └── plots/ – PNG visualizations

---

🧪 How to Run

Use the command snakemake --cores 4 to execute the full pipeline. It will generate all results and plots. The pipeline runs with dummy data but is fully compatible with real input.

---

📊 Visual Outputs

All plots are generated using R and saved in data/plots/:  
- volcano_plot.png  
- heatmap.png  
- pca_plot.png  
- ma_plot.png  
- dispersion_plot.png  
- boxplots.png

---

📌 Sample Configuration

Defined in config.yaml:  
- 20 samples total  
- 10 control, 10 treatment  
- Reference genome and GTF paths included

---

🧠 About

This pipeline is part of the EhsanOmics initiative, focused on reproducible bioinformatics workflows and clear scientific communication. It demonstrates practical skills in RNA-seq analysis, Snakemake workflow design, and R-based visualization. Intended for demonstration, collaboration, and future integration with real datasets.

---

📫 Contact

- Email: ejafarinia@gmail.com  
- LinkedIn: https://www.linkedin.com/in/ehsanjafarinia 
- GitHub: https://github.com/ehsanomics

---

⚠️ Disclaimer

This pipeline uses placeholder data and simulated steps for demonstration purposes. Replace with real FASTQ files and reference genomes for production use.


https://www.linkedin.com/posts/ehsanjafarinia_rnaseq-transcriptomics-geneexpression-activity-7377272838828818432-If_Y?utm_source=share&utm_medium=member_android&rcm=ACoAAEfgyyIBmT1V4KckCypdwpDXkpu2W5mb39o
