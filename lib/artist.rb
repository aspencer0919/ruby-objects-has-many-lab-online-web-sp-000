#class Artist
#  attr_accessor :name, :songs
#  @songs = []

#  def initialize(name)
#    @name = name
#  end

#  def add_song(songs)
#    songs.artist = self
#  end

#  def song_count
#    @songs.length
#  end
#end

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end
end

class Song
  attr_accessor :artist, :name, :genre
 
  @@all = []
 
  def initialize(name, genre)
    @name = name
    @genre = genre
    save
  end
 
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
end