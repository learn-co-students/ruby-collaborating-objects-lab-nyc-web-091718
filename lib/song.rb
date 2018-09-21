require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    file_ar = file_name.split(" - ")
    ns = self.new(file_ar[1])
    ns.artist = Artist.find_or_create_by_name(file_ar[0])
    # binding.pry
    ns.artist.add_song(ns)
    # na = Artist.find_or_create_by_name(file_ar[0])
    # ns.artist = Artist.all.find do |artist|
    #   artist == file_ar[0]
    # end
    ns
# binding.pry
  end #.artist has to link to artist instance
# binding.pry
end #end Song

# binding.pry
