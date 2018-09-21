require 'pry'

class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def import
    self.files.each do
      @files << Song.new_by_filename
    end
  end

  def files
    # @files.map do |file|
    #   File.basename(file)
    # end
    Dir["#{self.path}/*"].map do |file|
      File.basename(file)
    end
    # binding.pry
  end

end #end MP3Importer

# mp3_files = Dir["./spec/fixtures/mp3s/*"].map do |file|
#   File.basename(file, ".mp3")
# end #returns array of file names without path and suffix
#
# mp3_files.map do |file|
#   file.split(" - ")
# end
#[
#["Real Estate", "It's Real", "hip-hop"],
#["Real Estate", "Green Aisles", "country"],
#["Thundercat", "For Love I Come", "dance"],
#["Action Bronson", "Larry Csonka", "indie"]
#]
