require 'pry'
class Song
  attr_accessor :name
  attr_reader :artist

  @@all = []
  
  def initialize(name, artist="")
    @name = name
    
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
    self
  end

  def self.create(name)
    #binding.pry
    song = self.new(name)
    song.save
  end
end