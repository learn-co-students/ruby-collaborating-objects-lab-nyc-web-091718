# The Artist class will be responsible for either creating the artist
# (if the artist doesn't exist in our program yet) or finding the instance of
#  that artist (if the artist does exist).

require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    self.class.all << self
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

  def self.find_or_create_by_name(name)
    self.all.find {|artist| artist.name == "Michael Jackson"} || self.new(name)
  end

end
