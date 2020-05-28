# Coerce the data into a common data frame
#
# Read the source data frames and amalgamate the data
#
# @author Aaron Sheldon
#
# @param list raw source data
# @returns data.frames coerced data
# @todo fix date time handling

# Instantiate function
coerce.data <- function(
	haystack.data
)
{

# # # # # # # # # # # # # # # # # # # # # # Debug code # # # # # # # # # # # # # # # # # # # # # #
cat("start coerce data\n");
tic <- proc.time();
# # # # # # # # # # # # # # # # # # # # # # Debug code # # # # # # # # # # # # # # # # # # # # # #

	# Output dimension names
	number.dimension <- "spill_number";
	date.dimension <- "spill_date";
	volume.dimension <- "spill_volume";

	# Reporting period bounds
	lower.date = as.POSIXct("2004-01-01 00:00", format = "%Y-%m-%d %H:%M", tz = "UTC");
	upper.date = as.POSIXct("2012-01-01 00:00", format = "%Y-%m-%d %H:%M", tz = "UTC");

	# Convert volumes to cubic metres
	conversion.data <- c(
		BARRELS = 0.158987294928,
		GALLONS = 0.003785411784
	);

	# Thresh the haystack into older and newer hay
	old.haystack.data <- haystack.data[["accidents.2002.2009.file"]];
	new.haystack.data <- haystack.data[["accidents.2010.present.file"]];

	# Find the needles in the haystack
	needle.index <- as.logical(is.na(old.haystack.data[, "RPTID"]));

	# Mark the needles in the haystack
	old.haystack.data[needle.index, "RPTID"] <- - (20020000 + 1:length(needle.index));

	# Find the needles in the haystack
	old.haystack.data[, "IDATE"] <- as.character(old.haystack.data[, "IDATE"]);
	needle.index <- as.logical(is.na(old.haystack.data[, "IDATE"]));

	# Mark the needles in the haystack
	old.haystack.data[needle.index, "IDATE"] <- as.factor("01/01/2002");

	# Find the needles in the haystack
	needle.index <- as.logical(is.na(old.haystack.data[, "IHOUR"]));

	# Mark the needles in the haystack
	old.haystack.data[needle.index, "IHOUR"] <- 0;
	old.haystack.data[, "IMINUTE"] <- sprintf(old.haystack.data[, "IHOUR"] %% 100, fmt = "%02.0f");
	old.haystack.data[, "IHOUR"] <- sprintf(floor(old.haystack.data[, "IHOUR"] / 100), fmt = "%02.0f");
	old.haystack.data[, "ITIME"] <- do.call(paste, c(old.haystack.data[, c("IHOUR", "IMINUTE")], sep = ":"));
	old.haystack.data[, "IDATETIME"] <- do.call(paste, c(old.haystack.data[, c("IDATE", "ITIME")], sep = " "));

	# Find the needles in the haystack
	old.haystack.data[, "SPUNIT_TXT"] <- as.character(old.haystack.data[, "SPUNIT_TXT"]);
	needle.index <- as.logical(is.na(old.haystack.data[, "SPUNIT_TXT"]));

	# Mark the needles in the haystack
	old.haystack.data[needle.index, "SPUNIT_TXT"] <- "BARRELS";

	# Find the needles in the haystack
	needle.index <- as.logical(is.na(old.haystack.data[, "LOSS"]));

	# Mark the needles in the haystack
	old.haystack.data[needle.index, "LOSS"] <- 0;

	# Stick the needles back in the haystack
	old.haystack.data[, number.dimension] <- old.haystack.data[, "RPTID"];
	old.haystack.data[, date.dimension] <- as.POSIXct(old.haystack.data[, "IDATETIME"], format = "%m/%d/%Y %H:%M", tz = "UTC");
	old.haystack.data[, volume.dimension] <- conversion.data[old.haystack.data[, "SPUNIT_TXT"]] * old.haystack.data[, "LOSS"];

	# Find the needles in the haystack
	needle.index <- as.logical(is.na(new.haystack.data[, "REPORT_NUMBER"]));

	# Mark the needles in the haystack
	new.haystack.data[needle.index, "REPORT_NUMBER"] <- - (20100000 + 1:length(needle.index));

	# Find the needles in the haystack
	new.haystack.data[, "LOCAL_DATETIME"] <- as.character(new.haystack.data[, "LOCAL_DATETIME"]);
	needle.index <- as.logical(is.na(new.haystack.data[, "LOCAL_DATETIME"]));

	# Mark the needles in the haystack
	new.haystack.data[needle.index, "LOCAL_DATETIME"] <- "01/01/2010 00:00";

	# Find the needles in the haystack
	needle.index <- as.logical(nchar(new.haystack.data[, "LOCAL_DATETIME"]) <= 10);

	# Mark the needles in the haystack
	new.haystack.data[needle.index, "LOCAL_TIME"] <- "0:00";
	new.haystack.data[needle.index, "LOCAL_DATETIME"] <- do.call(paste, c(new.haystack.data[needle.index, c("LOCAL_DATETIME", "LOCAL_TIME")], sep = " "));

	# Find the needles in the haystack
	needle.index <- as.logical(is.na(new.haystack.data[, "INTENTIONAL_RELEASE_BBLS"]));

	# Mark the needles in the haystack
	new.haystack.data[needle.index, "INTENTIONAL_RELEASE_BBLS"] <- 0;

	# Find the needles in the haystack
	needle.index <- as.logical(is.na(new.haystack.data[, "UNINTENTIONAL_RELEASE_BBLS"]));

	# Mark the needles in the haystack
	new.haystack.data[needle.index, "UNINTENTIONAL_RELEASE_BBLS"] <- 0;

	# Stick the needles back in the haystack
	new.haystack.data[, number.dimension] <- new.haystack.data[, "REPORT_NUMBER"];
	new.haystack.data[, date.dimension] <- as.POSIXct(new.haystack.data[, "LOCAL_DATETIME"], format = "%m/%d/%Y %H:%M", tz = "UTC");
	new.haystack.data[, volume.dimension] <- conversion.data[["BARRELS"]] * (new.haystack.data[, "INTENTIONAL_RELEASE_BBLS"] + new.haystack.data[, "UNINTENTIONAL_RELEASE_BBLS"]);

	# Stick the needles in the pincushion
	pincushion.data <- rbind(
		old.haystack.data[, c(number.dimension, date.dimension, volume.dimension)],
		new.haystack.data[, c(number.dimension, date.dimension, volume.dimension)]
	);

	# Find the needles in the haystack
	needle.index <- as.logical(
		lower.date <= pincushion.data[, date.dimension] &
		upper.date > pincushion.data[, date.dimension]
	);

	# Pull the needles from the haystack and stick them in the pincushion
	pincushion.data <- pincushion.data[needle.index, ];

# # # # # # # # # # # # # # # # # # # # # # Debug code # # # # # # # # # # # # # # # # # # # # # #
toc <- proc.time() - tic;
cat(toc);
cat(" - done coerce data\n");
# # # # # # # # # # # # # # # # # # # # # # Debug code # # # # # # # # # # # # # # # # # # # # # #

	# Return the pincushion to sender
	return(pincushion.data);
}