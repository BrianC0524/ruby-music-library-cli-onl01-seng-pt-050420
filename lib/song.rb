class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name, artist = nil)
    @name = name
    @artist = artist
    save
  end
  
  def artist=(name)
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def self.create(new_song)
    song = self.new(new_song)
    song.save
    song
  end
  
end