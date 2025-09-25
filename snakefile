configfile: "config.yaml"

rule all:
    input:
        expand("main/qc/{sample}_fastqc.html", sample=config["samples"]),
        expand("main/aligned/{sample}.bam", sample=config["samples"]),
        "main/counts/counts.txt",
        "main/results/dds.RData",
        "main/plots/volcano_plot.png",
        "main/plots/heatmap.png",
        "main/plots/pca_plot.png",
        "main/plots/ma_plot.png",
        "main/plots/dispersion_plot.png",
        "main/plots/boxplots.png"

rule fastqc:
    input:
        "main/raw/{sample}.fastq"
    output:
        html="main/qc/{sample}_fastqc.html"
    shell:
        "touch {output.html}"

rule align_star:
    input:
        fastq="main/raw/{sample}.fastq",
        index="main/reference/star_index"
    output:
        bam="main/aligned/{sample}.bam"
    shell:
        "touch {output.bam}"

rule count_features:
    input:
        bams=expand("main/aligned/{sample}.bam", sample=config["samples"]),
        gtf="main/reference/genes.gtf"
    output:
        "main/counts/counts.txt"
    shell:
        "echo -e 'gene\tSample1\tSample2' > {output}; echo -e 'GeneA\t100\t200' >> {output}"

rule run_deseq2:
    input:
        counts="main/counts/counts.txt"
    output:
        rdata="main/results/dds.RData"
    script:
        "scripts/run_deseq2.R"

rule plot_volcano:
    input:
        "main/results/dds.RData"
    output:
        "main/plots/volcano_plot.png"
    script:
        "scripts/plot_volcano.R"

rule plot_heatmap:
    input:
        "main/results/dds.RData"
    output:
        "main/plots/heatmap.png"
    script:
        "scripts/plot_heatmap.R"

rule plot_pca:
    input:
        "main/results/dds.RData"
    output:
        "main/plots/pca_plot.png"
    script:
        "scripts/plot_pca.R"

rule plot_ma:
    input:
        "main/results/dds.RData"
    output:
        "main/plots/ma_plot.png"
    script:
        "scripts/plot_ma.R"

rule plot_dispersion:
    input:
        "main/results/dds.RData"
    output:
        "main/plots/dispersion_plot.png"
    script:
        "scripts/plot_dispersion.R"

rule plot_boxplots:
    input:
        "main/results/dds.RData"
    output:
        "main/plots/boxplots.png"
    script:
        "scripts/plot_boxplots.R"
