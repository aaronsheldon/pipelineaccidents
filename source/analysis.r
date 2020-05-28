# Miscellaneous calls to user defined functions
#
# End result is maximum likelihood estimates
# and asymptotic variance estimates
#
# @author Aaron Sheldon
#
# @param void
# @returns void

# Refresh data sources
source.data <- load.data(work.path = "/home/aaron/Documents/Statistics/pipeline/data/");
analysis.data <- coerce.data(source.data);