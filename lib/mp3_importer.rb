class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir["#{@path}/*"].map {|file| file.split("#{@path}/")}.each {|file| file.delete_if {|array_element| array_element == ""}}.flatten
  end

  def import
    files = self.files
    files.each {|song| Song.new_by_filename(song)}
  end

end
