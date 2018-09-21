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
   def add_song(new_song)
    self.songs << new_song
  end
   def save
    @@all << self
  end
   def self.find_or_create_by_name(artist_name)
    found_artist = @@all.find{|each_artist| each_artist.name == artist_name}
    if found_artist == nil
      Artist.new(artist_name)
    else
      found_artist
    end
  end
   def print_songs
    puts self.songs.map{|song| song.name}.join("\n")
  end
 end#end of Artist Class
