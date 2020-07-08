require 'pry'
 class MP3Importer
  attr_reader :path
  attr_accessor :files
   def initialize(path)
    @path = path
    @files = []
  end
    def files
      self.files = Dir["#{self.path}/*.mp3"].collect{|full| full.gsub("#{self.path}/","")}
   end
   def import
    all_filenames = self.files
    all_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
 end
 #binding.pry
