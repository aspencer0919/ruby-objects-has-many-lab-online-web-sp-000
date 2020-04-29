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

  def add_song_by_name(name)
    song = Song.new
  end

  def song_count
    Song.all.length
  end
end
