# Specify the path to the zip file
zip_file <- "Employee_Profile.zip"

# Specify the directory where you want to extract the files
extract_to <- "Employee_Profile"

# If the directory does not exist, create it
if (!file.exists(extract_to)) {
  dir.create(extract_to)
}

# Unzip the file
unzip(zip_file, exdir = extract_to)
extracted_files <- list.files(extract_to, full.names = TRUE)

# Display the contents
for (file in extracted_files) {
  cat("Contents of", file, ":\n")
  print(read.csv(file))
}