require 'pry'
class MP3Importer

  attr_accessor :path, :files

  def initialize(file_path)
    @path = file_path
  end

  def files()
    temp = Dir["#{path}/*"]
    temp.map {|file| file.gsub("#{path}/","")}
  end

  def import()
    files = self.files
    files.each{|file| Song.new_by_filename(file)}
  end

end
