
# Import data

library(readr)

mcf_data <- read_csv("appropriate_name.csv")


# Load library and create heuristic and Markov models

library("ChannelAttribution")



heur_model <- heuristic_models(mcf_data, 'basicChannelGroupingPath', 
                               'totalConversions', 
                               var_value='totalConversionValue')

heur_model




mark_model <- markov_model(mcf_data, 'basicChannelGroupingPath', 
                           'totalConversions', 
                           var_value='totalConversionValue', 
                           order = 1)

mark_model