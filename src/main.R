library(BiocManager)
library(snpStats)
library(VariantAnnotation)


# Load genetic Data from a VCF file

# Define the file path to your downloaded VCF file
# vcf_file <- 'Data/Core-GRCh38/gnomad.exomes.r2.1.1.sites.Y.liftover_grch38.vcf.bgz'
vcf_file <- 'D:/Lab/R/Genetic-Analysis/src/Data/Core-GRCh38/gnomad.exomes.r2.1.1.sites.Y.liftover_grch38.vcf.bgz'

# Load the VCF file into R
genetic_data <- readVcf(vcf_file, 'GRCh38')

# # View the first few rows of the genetic data
# head(genetic_data)
#
# # Access specific information, e.g., chromosome and position of the first variant
# genetic_data$seqnames[1]
# genetic_data$pos[1]

# # Check for missing values
# any(is.na(info(genetic_data)$FILTER))
#
# # Check for infinite values
# any(is.infinite(info(genetic_data)$FILTER))


# # Create a bar plot of FILTER values
barplot(table(info(genetic_data)$FILTER), main = "Filter Counts", xlab = "Filter Type", ylab = "Frequency", ylim = c(0, max(table(info(genetic_data)$FILTER))))

