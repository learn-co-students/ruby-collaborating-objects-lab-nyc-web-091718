require 'pry'

class Artist

  @@all = []

  def self.find_or_create_by_name(name)
    @@all.all? {|x| x.name != name} ?
      self.new(name) :
        @@all.find {|inst| inst.name == name}
    #   end
    #   @@all.find {|x| x == name}
    #   # binding.pryname
    # else
    #   self.new(name)
    # end
    #binding.pry
  end

  def self.all
    @@all
  end

  attr_accessor :name, :songs, :genre

  def initialize(name)
    @name = name
    @songs = []
    if @@all.all? {|x| x.name != name}
      @@all << self
    end
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end


end #end Artist

# class Artist
#   @@all = []
#   attr_accessor :name, :songs
#
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
#
#   def self.all
#     @@all
#   end
#
#   def add_song(song)
#     @songs << song
#   end
#
#   def self.find_or_create_by_name(name)
#     self.find(name) ? self.find(name) : self.create(name)
#   end
#
#   def self.find(name)
#     self.all.find {|artist| artist.name == name }
#   end
#
#
#   def self.create(name)
#     self.new(name).tap {|artist| artist.save}
#   end
#
#   def save
#     @@all << self
#   end
#
#   def print_songs
#     songs.each {|song| puts song.name}
#   end
# end
