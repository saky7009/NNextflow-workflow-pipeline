# Install the DiagrammeR package if you haven't already
install.packages("DiagrammeR")

# Load the DiagrammeR package
library(DiagrammeR)

# Create the flowchart for Variant Analysis in Mitogenomes
flowchart <- "
digraph Variant_Analysis_Pipeline {
  
  # Node settings (box style for all nodes)
  node [shape=box, style=filled, fillcolor=pink, fontname=Helvetica, fontsize=10];
  
  # Define nodes with labels for each step in the pipeline
  QC_Data [label='1. Quality Control of Raw Data\nFastQC, Read Filtering & Trimming'];
  Alignment [label='2. Read Alignment\nAlign to Reference Genome\n(BWA, Bowtie2, Minimap2)'];
  Variant_Calling [label='3. Variant Calling\n(SNPs & Indels)\n(GATK, Samtools, FreeBayes)'];
  Variant_Filtering [label='4. Variant Filtering\nMinQ, MinDP, Depth Filtering'];
  Variant_Annotation [label='5. Variant Annotation\nSnpEff, dbSNP, ClinVar'];
  Variant_Interpretation [label='6. Interpretation\nFunctional Impact, Disease Association, Population Studies'];
  Visualization [label='7. Visualization\nIGV, Circos Plots, Variant Distribution'];

  # Define edges (connections between steps)
  QC_Data -> Alignment;
  Alignment -> Variant_Calling;
  Variant_Calling -> Variant_Filtering;
  Variant_Filtering -> Variant_Annotation;
  Variant_Annotation -> Variant_Interpretation;
  Variant_Interpretation -> Visualization;

}
"

# Generate the flowchart using the DiagrammeR package
grViz(flowchart)
