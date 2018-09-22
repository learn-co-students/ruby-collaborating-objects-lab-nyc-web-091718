class Song

  attr_reader  :name
  attr_accessor :artist

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def self.new_by_filename(filename)
    #splits filename into artist name and song name parts
    song_parts = filename.split(' - ')
    #removes .mp3 from the song name
    song_name = song_parts[1].gsub('.mp3', '')
    #puts the song artist name in the artist name variable
    artist_name = song_parts[0]
    #creates a new artist instance or finds the existing one with the given artist name
    new_artist = Artist.find_or_create_by_name(artist_name)
    #creates a new song instance with the given song name
    new_song = self.new(song_name)
    #adds the new song instance to the new or existing artist's intances list of songs
    new_artist.add_song(new_song)
    #sets the new song's artist to be the new or existing artist
    new_song.artist = new_artist
    #returns the new song instance
    new_song
  end

end
