require 'pry'

class Song

  attr_accessor :name
  attr_reader :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
      split_info = filename.split(" - ")
      #[0] = artist [1] = song [2] = genre.mp3
      song = Song.new(split_info[1])
      song.artist = Artist.find_or_create_by_name(split_info[0])
      song
  end

  def artist=(value)
    @artist = value
    @artist.add_song(self)
    @artist
  end


end
