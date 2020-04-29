class Artist
  attr_accessor :name, :song
  @list = []

  def initialize(name)
    @name = name
  end

  def songs(song)
    @song = []
  end

  def song_count
    @list.length
  end
end
