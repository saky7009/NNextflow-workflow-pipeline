# Create a flowchart for transcriptomic analysis workflow

flowchart_code <- "
digraph workflow {
  node [shape=box, fontname=Helvetica, fontsize=10]
  
  Raw_FASTQ [label='Raw FASTQ Files']
  QC [label='Data Quality Control (FastQC)']
  Trim [label='Read Trimming (Trimmomatic)']
  Align [label='Read Alignment (HISAT2)']
  Count [label='Gene Expression Quantification (featureCounts)']
  DE [label='Differential Expression (DESeq2)']
  PlotVolcano [label='Volcano Plot (ggplot2)']
  PlotHeatmap [label='Heatmap (ComplexHeatmap)']
  GO [label='Gene Ontology (GO) Analysis (clusterProfiler)']
  
  Raw_FASTQ -> QC -> Trim -> Align -> Count -> DE -> PlotVolcano
  DE -> PlotHeatmap
  DE -> GO
}
"

# Render the flowchart
grViz(flowchart_code)
