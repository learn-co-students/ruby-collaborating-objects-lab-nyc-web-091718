class Artist

  attr_reader :name

  attr_accessor :songs

  @@all = []
  def save

    @@all << self
  end

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def name=(name)
    @name = name

  end

  def add_song(song)
    @songs << song
  end



  def self.find_or_create_by_name(name)
    @@all.find do |artist|
       if artist.name == name
         #[#<Artist:0x007fd7fc1c36e0 @name="Michael Jackson", @songs=[]>]
         return artist
         # "Artist"
      end
    end

    artist = self.new(name)
    @@all << artist

    artist

  end

  def print_songs
    @songs.each do |song|
      puts song.name

    end

  end






end
