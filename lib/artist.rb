class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def save
    @@all << self
    @@all = @@all.uniq
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    artist =  @@all.select {|artist| artist.name == artist_name}
    return (!!artist[0]) ? artist[0] : Artist.new(artist_name)
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end
