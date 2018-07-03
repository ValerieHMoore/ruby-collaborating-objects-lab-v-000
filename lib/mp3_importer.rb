require 'pry'

class MP3Importer
  attr_accessor :path
  # def import(list_of_filenames)
  #   list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  # end
  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{path}")
  end

end