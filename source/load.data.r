# Load all the data available
#
# Read the data set into data.frames then construct a new
# data.frames with the clean data for analysis
#
# @author Aaron Sheldon
#
# @param string File name
# @returns data.frames Loaded and parsed data

# Instantiate function
load.data <- function(work.path = "", file.list)
{

# # # # # # # # # # # # # # # # # # # # # # Debug code # # # # # # # # # # # # # # # # # # # # # #
cat("start load data\n");
tic <- proc.time();
# # # # # # # # # # # # # # # # # # # # # # Debug code # # # # # # # # # # # # # # # # # # # # # #

	# Check for pair list of file names
	if (missing(file.list))
	{
		haystack.data <- list(
			accidents.2002.2009.file = "LIQ0102_GEN.csv",
			details.2002.2009.file = "LIQ0102_CAUSE.csv",
			accidents.2010.present.file = "Hazardous Liquid Accident PHMSA F7000-1 Rev.01-2010.csv",
			survey.2004.file = "HLIQAN04.csv",
			survey.2005.file = "HLIQAN05.csv",
			survey.2006.file = "HLIQAN06.csv",
			survey.2007.file = "HLIQAN07.csv",
			survey.2008.file = "HLIQAN08.csv",
			survey.2009.file = "HLIQAN09.csv",
			survey.2010.A.E.file = "Haz Liquid Annual Report 2010 - PHMSA F7000-1.1 (rev 06-2011) - Data File.A-E.csv",
			survey.2010.F.G.file = "Haz Liquid Annual Report 2010 - PHMSA F7000-1.1 (rev 06-2011) - Data File.F-G.csv",
			survey.2010.H.file = "Haz Liquid Annual Report 2010 - PHMSA F7000-1.1 (rev 06-2011) - Data File.H.csv",
			survey.2010.I.file = "Haz Liquid Annual Report 2010 - PHMSA F7000-1.1 (rev 06-2011) - Data File.I.csv",
			survey.2010.J.file = "Haz Liquid Annual Report 2010 - PHMSA F7000-1.1 (rev 06-2011) - Data File.J.csv",
			survey.2010.K.file = "Haz Liquid Annual Report 2010 - PHMSA F7000-1.1 (rev 06-2011) - Data File.K.csv",
			survey.2010.L.file = "Haz Liquid Annual Report 2010 - PHMSA F7000-1.1 (rev 06-2011) - Data File.L.csv",
			survey.2010.M.file = "Haz Liquid Annual Report 2010 - PHMSA F7000-1.1 (rev 06-2011) - Data File.M.csv",
			survey.2011.A.E.file = "Haz Liquid Annual Report 2011 - PHMSA F7000-1.1 (rev 06-2011) - Data File.A-E.csv",
			survey.2011.F.G.file = "Haz Liquid Annual Report 2011 - PHMSA F7000-1.1 (rev 06-2011) - Data File.F-G.csv",
			survey.2011.H.file = "Haz Liquid Annual Report 2011 - PHMSA F7000-1.1 (rev 06-2011) - Data File.H.csv",
			survey.2011.I.file = "Haz Liquid Annual Report 2011 - PHMSA F7000-1.1 (rev 06-2011) - Data File.I.csv",
			survey.2011.J.file = "Haz Liquid Annual Report 2011 - PHMSA F7000-1.1 (rev 06-2011) - Data File.J.csv",
			survey.2011.K.file = "Haz Liquid Annual Report 2011 - PHMSA F7000-1.1 (rev 06-2011) - Data File.K.csv",
			survey.2011.L.file = "Haz Liquid Annual Report 2011 - PHMSA F7000-1.1 (rev 06-2011) - Data File.L.csv",
			survey.2011.M.file = "Haz Liquid Annual Report 2011 - PHMSA F7000-1.1 (rev 06-2011) - Data File.M.csv"
		);
	}
	else
	{
		haystack.data <- file.list;
	}

	# Instantiate return list
	pincushion.data <- list();

	# Find each needle in the haystack and stick it in the pincushion
	for (needle.index in names(haystack.data))
	{
		pincushion.data[[needle.index]] <-read.csv(
			file = paste(work.path, haystack.data[[needle.index]], sep = ""),
			header = TRUE,
			sep = ",",
			quote="\"",
			dec=".",
			fill = TRUE,
			comment.char="",
			na.strings = "",
			nrows = -1,
			skip = 0,
			check.names = TRUE,
			strip.white = TRUE,
			blank.lines.skip = TRUE
		);

# # # # # # # # # # # # # # # # # # # # # # Debug code # # # # # # # # # # # # # # # # # # # # # #
toc <- proc.time() - tic;
cat(toc);
cat(" - load ");
cat(needle.index);
cat("\n");
tic <- proc.time();
# # # # # # # # # # # # # # # # # # # # # # Debug code # # # # # # # # # # # # # # # # # # # # # #
	}

# # # # # # # # # # # # # # # # # # # # # # Debug code # # # # # # # # # # # # # # # # # # # # # #
toc <- proc.time() - tic;
cat(toc);
cat(" - done load data\n");
# # # # # # # # # # # # # # # # # # # # # # Debug code # # # # # # # # # # # # # # # # # # # # # #

	# Return the pincushion to sender
	return(pincushion.data);
}