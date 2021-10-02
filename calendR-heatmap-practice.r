############################
# Practice Tracking Habits Using CalendR
#
# Katherine Schaughency
# 2 October 2021
############################

# --------------------------------- #
# load R package

library(tidyverse)
library(calendR)
library(RColorBrewer)
library(calendR)


# --------------------------------- #
# load the dataset

habit <- read.table("https://gist.githubusercontent.com/kcmlin/05f49a185247d1690a23e7ef6c2d07b7/raw/73f2637325936e23237b3a0d8262bb5014c18d38/habit.csv", header=TRUE, stringsAsFactors=FALSE, sep=",") 


# --------------------------------- #
# plot workout tracker

calendR(#year = 2021,
        start_date   = "2021-09-01",       # Custom start date
        end_date     = "2021-12-31",       # Custom end date
        special.days = habit[244:365,2],   # Days with an event
        start        = "S",                # Start the weeks on Sunday
        gradient     = TRUE,               # Color gradient
        low.col      = "white",            # Color of the lowest value
        special.col  = "#00AAAE",          # Color of the highest value
        title = "2021 - Workout",
        subtitle = "(started on 12 SEP 21, as of 1 OCT 21)"
)


# --------------------------------- #
# plot German tracker

calendR(#year = 2021,
        start_date   = "2021-09-01",       # Custom start date
        end_date     = "2021-12-31",       # Custom end date
        special.days = habit[244:365,3],   # Days with an event
        start = "S",                       # Start the weeks on Sunday
        gradient = TRUE,                   # Color gradient
        low.col = "white",                 # Color of the lowest value
        special.col = "#FF0000",           # Color of the highest value
        title = "2021 - German",
        subtitle = "(started on 30 SEP 21, as of 2 OCT 21)"
        )



