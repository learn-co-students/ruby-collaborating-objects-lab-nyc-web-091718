require 'pry'
class Song
  attr_accessor :name, :artist
   def initialize(name, artist = nil)
    @name = name
    @artist = artist
  end
   def self.new_by_filename(filename)
    splitFile = filename.split(" - ")
    loc_artist = Artist.find_or_create_by_name(splitFile[0])
    new_song = Song.new(splitFile[1],loc_artist)
    loc_artist.add_song(new_song)
    new_song
  end
 end #end of song class
