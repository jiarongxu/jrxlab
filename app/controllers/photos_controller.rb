class PhotosController < ApplicationController
  def index
	  client = Picasa::Client.new(:user_id => ENV["GMAIL"], :password => ENV["GOOGLE_API_SECRET"])

	  albums = client.album.list.entries

	  album = albums.find { |album| album.title == "JRXLAB" }

	  @album_id = album.id

  	@photos = client.album.show(@album_id).entries.reverse
	  
  end
end