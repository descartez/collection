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
  require 'csv'

  class GalleryManager
    attr_reader :full_gallery
    def initialize
      @full_gallery = []
    end

    def import
      CSV.foreach("Artworks.csv", {:headers => true, :header_converters => :symbol}) do |row|
        p "importing #{row[:title]}"
        @full_gallery << GalleryPiece.new(row)
      end
    end

  end

  class GalleryPiece
    attr_reader :title, :artist, :artist_bio, :date, :medium, :dimensions, :credit_line, :moma_number, :classification, :department,:date_acquired, :curator_approved, :object_id, :url
    def initialize(args)
      @title = args[:title]
      @artist = args[:artist]
      @artist_bio = args[:artistbio]
      @date = args[:date]
      @medium = args[:medium]
      @dimensions = args[:dimensions]
      @credit_line = args[:creditline]
      @moma_number = args[:momanumber]
      @classification = args[:classification]
      @department = args[:department]
      @date_acquired = args[:dateacquired]
      @curator_approved = args[:curatorapproved]
      @object_id = args[:objectid]
      @url = args[:url]
    end
  end

gallery_manager = GalleryManager.new
p 'running import'
gallery_manager.import
p 'import done'
p gallery_manager.full_gallery[0]
