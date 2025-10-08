* Clear memory
clear

* Close any previously open log
capture log close

* Import cleaned penguins CSV from local repo folder
import delimited "penguins_cleaned.csv", numericcols(3 4 5 6)

* Drop rows with missing bill_length_mm
drop if missing(bill_length_mm)

* Start logging
log using "penguin_output.log", replace text

* Descriptive statistics for numeric variables
summarize bill_length_mm bill_depth_mm flipper_length_mm body_mass_g

* Descriptive stats for body mass by species
tabstat body_mass_g, by(species) stats(mean sd n)

* Additional analysis for Part 3: flipper length by species
tabstat flipper_length_mm, by(species) stats(mean sd n)

* Close log
log close
