class Song
  attr_accessor :artist, :name, :genre

  @@all = []

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
    @@all << self
    save
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist
      self.artist.name
    end
  end
end
