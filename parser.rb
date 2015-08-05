# Pseudocode
# MVP: converted JSON of stats re: mediums, time periods, artists country of origin
    # - just stats means smaller json object, faster load time.
# 1. read csv file
  # a. convert each into object
  # b. need to use regex to determine dates, country of origin, mediums, etc.
    # - artist bio : has multiple formats including birth and death year, artists' country
    # - medium : should formalize/standardize a tagging system? "Ink" is not all there is. Possibly create a tagging method which takes the raw medium data and converts into tags.
# 2. create stats/object manager
  # a. parses out all objects to give stats on mediums, artists, etc.
  # b. converts and outputs to json objects?
    # - Would make whole process easier when introducing data to JSON
    # - at least convert stats into JSON, which will be MVP
# 3. Create tests.
  # a. makes sure that data is transcribing properly.
  # b. ensures tags are working.
  # c. checks to make sure csv is reading properly
