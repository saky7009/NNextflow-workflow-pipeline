# Load DiagrammeR package
library(DiagrammeR)

# Define the flowchart diagram using Graphviz language
flowchart <- "
digraph Mitogenome_Analysis_Pipeline {

  # Node settings
  node [shape=box, style=filled, fillcolor=yellow, fontname=Helvetica, fontsize=10];

  # Define nodes
  Sample_Collection [label='1. Sample Collection\nOrganism & Tissue Selection'];
  DNA_Extraction [label='2. DNA Extraction\nCommercial Kits (QIAGEN, Thermo Fisher)\nQuality Control (NanoDrop, Qubit)'];
  Sequencing [label='3. Sequencing\nWGS (Illumina, PacBio, Oxford Nanopore)\nOr Targeted Sequencing'];
  Data_Processing [label='4. Sequence Data Processing\nFastQC, Read Filtering & Trimming (Trimmomatic, Cutadapt)'];
  DNA_Assembly [label='5. Mitochondrial DNA Assembly\nAlign (BWA, Bowtie2)\nDe novo Assembly (SPAdes, Canu)'];
  Annotation [label='6. Annotation of Mitochondrial Genome\nGene Prediction (MITOS, GeSeq, tRNAscan-SE)'];
  Phylogenetic_Analysis [label='7. Phylogenetic & Evolutionary Analysis\nCompare Genomes (MAFFT, Clustal Omega, MUSCLE)\nConstruct Phylogenetic Tree (RAxML, IQ-TREE, MrBayes)'];
  Variant_Analysis [label='8. Variant Detection & Analysis\nSNP/Indel Calling (GATK, Samtools, FreeBayes)\nVariant Annotation (dbSNP, ClinVar)'];
  Functional_Analysis [label='9. Functional Analysis\nStudy Mitochondrial Gene Functions & Mutational Impact on Diseases'];
  Visualization_Reporting [label='10. Data Visualization & Reporting\nVisualize Genome (Artemis, IGV, Bandage)\nGenerate Plots & Summarize Findings'];

  # Define edges (connections between nodes)
  Sample_Collection -> DNA_Extraction;
  DNA_Extraction -> Sequencing;
  Sequencing -> Data_Processing;
  Data_Processing -> DNA_Assembly;
  DNA_Assembly -> Annotation;
  Annotation -> Phylogenetic_Analysis;
  Phylogenetic_Analysis -> Variant_Analysis;
  Variant_Analysis -> Functional_Analysis;
  Functional_Analysis -> Visualization_Reporting;

}
"

# Generate the flowchart
grViz(flowchart)
