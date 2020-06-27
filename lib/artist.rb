class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def songs
    @songs
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def self.create(new_artist)
    artist = self.new(new_artist)
    artist.save
    artist
  end
  
end