# Load DiagrammeR package
library(DiagrammeR)

# Define the flowchart diagram
flowchart <- "
digraph TE_Analysis_Pipeline {

  # Node settings
  node [shape=box, style=filled, fillcolor=green, fontname=Helvetica, fontsize=10];

  # Define nodes
  Data_Acquisition [label='Data Acquisition\nSequence genome using platforms like Illumina, PacBio'];
  QC_Preprocessing [label='Preprocessing of Raw Data\nPerform FastQC, Trim/Filter Reads (Trimmomatic, Cutadapt)'];
  Alignment_Assembly [label='Alignment & Assembly\nAlign reads (BWA, Bowtie2), De novo assembly (SPAdes, Canu)'];
  TE_Discovery [label='TE Identification\nRun RepeatModeler, RepeatMasker, TEFam for classification'];
  Annotation [label='Functional Annotation of TEs\nUse BEDTools or GFF3 for genomic annotations'];
  Quantification [label='Quantification of TE Content\nMeasure abundance, genome occupancy, TE landscape'];
  Insertion_Site_Analysis [label='Insertion Site Analysis\nIdentify TE insertion sites (TEtranscripts, MITE-hunter)'];
  TE_Expression_Analysis [label='TE Expression Analysis (Optional)\nRNA-Seq Analysis (TEtranscripts)'];
  Visualization_Reporting [label='Visualization & Reporting\nUse IGV, Circos, ggplot2 for plots & summarize findings'];
  Further_Studies [label='Further Studies (Optional)\nTE-Gene Associations, Comparative Analysis'];

  # Define edges (connections between nodes)
  Data_Acquisition -> QC_Preprocessing;
  QC_Preprocessing -> Alignment_Assembly;
  Alignment_Assembly -> TE_Discovery;
  TE_Discovery -> Annotation;
  Annotation -> Quantification;
  Quantification -> Insertion_Site_Analysis;
  Insertion_Site_Analysis -> TE_Expression_Analysis;
  TE_Expression_Analysis -> Visualization_Reporting;
  Visualization_Reporting -> Further_Studies;

}
"

# Create the flowchart
grViz(flowchart)
