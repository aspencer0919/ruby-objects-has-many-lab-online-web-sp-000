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

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  def song_count
    @songs.length
  end
end
