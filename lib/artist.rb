class Artist
  attr_accessor :name, :song
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    if song.artist == nil 
      song.artist = self
    end
    if !@songs.include?(song)
      @song << song
    end
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