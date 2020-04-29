class Song
  attr_accessor :artist, :name, :genre

  @@all = []

  def initialize(artist, name)
    @name = name
    @artist = artist
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end
