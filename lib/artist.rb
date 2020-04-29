class Artist
  attr_accessor :name, :song
  @list = []

  def initialize(name)
    @name = name
  end

  def songs
    @song = []
  end

  def add_song
    @song.name = self
  end

  def song_count
    @song.length
  end
end
