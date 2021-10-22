Giphy::Configuration.configure do |config|
  config.version = 'v1'
  config.api_key = 'e5039a60f162449e8423021f92ce503e' #Hank's personal non-prod key
end

=begin

require 'open-uri'
require 'base64'

search = 'can divide by zero' #use ChuckNorris fact with /chuck norris/i removed and white space removed
gif_search = Giphy.search(search, {limit: 1, rating: 'g'}).first
image_url = gif_search.fixed_height_image.url
# encode into Base64 and save in DB

image_base64 = Base64.encode64( image_url.read)

=end


