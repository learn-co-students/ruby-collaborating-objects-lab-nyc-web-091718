
class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = Dir.entries(path).reject {|file| File.directory? file}
  end

  def files
    @files
  end

  def import
    @files.each do |file|
      # \b are bounderies
      # so \b - \b matches " - " between artist, song, and genre
      # \b.mp3\b matches the end of the filename
      # using split takes them out, leaving a three index array
      # / regex /
      file_info = file.split(/\b - \b|\b.mp3\b/)
      artist_name = file_info[0]
      song_name = file_info[1]
      genre = file_info[2]
      Song.new_by_filename(song_name)
    end
  end
end
