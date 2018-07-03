require 'pry'

class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end

  def files
    array = Dir.glob("#{path}/*.mp3").collect{|file| file.split(path+"/")[1]}
  end

end