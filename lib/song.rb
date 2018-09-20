require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    file_info = file_name.split(/\b - \b|\b.mp3\b/)

    artist_name = file_info[0]
    song_name = file_info[1]
    song = self.new(song_name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.artist.add_song(song)
    return song
    # binding.pry
  end


end
