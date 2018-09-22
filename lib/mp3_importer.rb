require 'pry'
class MP3Importer

  attr_reader :path
  attr_accessor :files

  def initialize(path)
    @path = path
    @files = []
    Dir.new(path).each do |filename|
      if filename.end_with?(".mp3")
        @files << filename
      end
    end
  end

  def import
    @files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
