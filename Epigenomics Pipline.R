# Install the required package if not already installed
if (!require(DiagrammeR)) install.packages("DiagrammeR")

# Load the DiagrammeR library
library(DiagrammeR)

# Create the flowchart diagram using Graphviz's DOT syntax inside grViz()
graph <- grViz("
digraph workflow {
  graph [rankdir = TB, fontsize = 12, fontname = 'Helvetica']
  node [shape = box, style = filled, fillcolor = lightblue, fontname = 'Helvetica']
  
  # Define workflow steps
  seq_node [label = 'Sequencing (Oxford Nanopore)\n(MinION, GridION, PromethION)', shape = box, width = 3]
  dorado_basecall_node [label = 'Basecalling (Dorado)', shape = box, width = 3]
  guppy_basecall_node [label = 'Basecalling (Guppy)', shape = box, width = 3]
  modkit_node [label = 'Modification Detection (Nanopore Mod Kit)', shape = box, width = 3]
  qc_node [label = 'Quality Control (FastQC, Nanoplot)', shape = box, width = 3]
  alignment_node [label = 'Alignment (Bismark, Minimap2)', shape = box, width = 3]
  methylcall_node [label = 'Methylation Calling (Nanopolish, Methylkit)', shape = box, width = 3]
  dm_analysis_node [label = 'Differential Methylation Analysis\n(MethylKit, DESeq2)', shape = box, width = 3]
  annotation_node [label = 'Functional Annotation\n(BEDTools, ChIPseeker)', shape = box, width = 3]
  enrichment_node [label = 'Gene Ontology/Pathway Enrichment\n(clusterProfiler, DAVID, Enrichr)', shape = box, width = 3]
  viz_node [label = 'Visualization\n(Heatmaps, Volcano Plots, IGV, UCSC Genome Browser)', shape = box, width = 3]
  interpretation_node [label = 'Interpretation and Biological Implications', shape = box, width = 3]

  # Define flow connections between steps
  seq_node -> dorado_basecall_node
  seq_node -> guppy_basecall_node
  dorado_basecall_node -> modkit_node
  guppy_basecall_node -> modkit_node
  modkit_node -> qc_node
  qc_node -> alignment_node
  alignment_node -> methylcall_node
  methylcall_node -> dm_analysis_node
  dm_analysis_node -> annotation_node
  annotation_node -> enrichment_node
  enrichment_node -> viz_node
  viz_node -> interpretation_node

  # Customize appearance
  edge [color = grey, arrowhead = vee, fontsize = 10, fontname = 'Helvetica']
}
")

# Render the diagram
graph
