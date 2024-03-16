library(readr)
library(RSQLite)

mock_data <- readr::read_csv("data_upload/mock_data.csv")
my_connection <- RSQLite::dbConnect(RSQLite::SQLite(),"database/database.db")
RSQLite::dbWriteTable(my_connection, "clients", mock_data, overwrite = TRUE, append = FALSE)