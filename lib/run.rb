require 'pry'
require_relative "./artist.rb"
require_relative "./song.rb"
require_relative "./mp3_importer.rb"

test_music_path = "./spec/fixtures/mp3s"
music_importer = MP3Importer.new(test_music_path)
binding.pry
