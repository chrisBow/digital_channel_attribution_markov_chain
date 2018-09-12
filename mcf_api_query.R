

# Set report start and end dates

start_date <- "2018-08-01"
end_date <- "2018-08-31"


# Choose id for correct view in Google Analytics and authorise

profile_id <- "Google Analytics profile id"

library(ROAuth)
library(RGA)

authorize()



# Query Google MCF API

mcf_data <- get_mcf(profileId = profile_id, 
                    start.date = start_date, 
                    end.date = end_date, 
                    metrics = "mcf:firstInteractionValue, 
                    mcf:lastInteractionValue, mcf:assistedValue, 
                    mcf:totalConversionValue, 
                    mcf:totalConversions", 
                    dimensions = "mcf:conversionDate, 
                    mcf:basicChannelGroupingPath", 
                    sort = NULL,
                    filters = NULL, 
                    samplingLevel = NULL, 
                    start.index = NULL, 
                    max.results = NULL, 
                    fetch.by = NULL)


# Store data as .csv

write.csv(mcf_data, "appropriate_name.csv", row.names = FALSE)




