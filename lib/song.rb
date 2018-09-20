require 'pry'

class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.new_by_filename(filename)
    filename = filename.chomp('.mp3').split(" - ")
    new_song = self.new(filename[1])
    # binding.pry
    artist = Artist.find_or_create_by_name(filename[0])
    # binding.pry
    artist.add_song(new_song)
    @@all << new_song
    # binding.pry
    new_song
  end
end
