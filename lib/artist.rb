class Artist
  attr_accessor :name, :song
  @song = []

  def initialize(name)
    @name = name
  end

  def add_song(song)
    song.name = self
  end

  def song_count
    @song.length
  end
end
