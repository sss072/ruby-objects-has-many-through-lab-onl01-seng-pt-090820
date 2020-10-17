class Artist 
  attr_accessor :name 
  
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  def self.all 
    @@all 
  end 
  def new_song(name, genre)
    song_holder = Song.new(name, self, genre)
    
  end 
  def songs 
    Song.all.select do |element|
      element.artist == self 
    end 
  end 
  def genres 
    songs.collect do |element|
      element.genre 
    end 
  end 
end 