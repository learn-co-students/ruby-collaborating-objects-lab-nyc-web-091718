class Artist

  attr_accessor :name, :songs
  @@artists =[]

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@artists << self
  end

  def self.all
    @@artists
  end

  def self.find_or_create_by_name (name)
    artist = Artist.all.find {|element| element.name == name}

    if(artist == nil)
      artist = Artist.new(name)
    else
      artist
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
