require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
 
  def add_song(song)
    @songs << song
  end
 
  def self.all
    @@all
  end
  
  def save
    @@all << self
    self
  end
 
  def self.find_or_create_by_name(name)
    name_match = self.all.detect{|object| object.name == name}
    if name_match
      name_match
    else
      new_object = self.new(name)
      new_object.save
    end
  end
  
  def print_songs
    @@all.each do |artist| artist.songs
      songs.each do |song| puts "song\n"
      end
    end
  end
  
end