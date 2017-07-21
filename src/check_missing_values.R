# Simple function that reports back if there are any NA values in the data frame.
# It reports back the number of NA's in each column.
# NOTE: Only works with NA values - all blanks "" must be converted to NA before being processed
check_missing_values <- function(data_frame){
  sapply(data_frame, function(x) sum(is.na(x)))
}