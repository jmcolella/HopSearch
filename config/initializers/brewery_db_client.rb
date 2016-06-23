BREWERY_DB_CLIENT = BreweryDB::Client.new do |config|
    config.api_key = ENV["BREWERY_DB_KEY"]
  end