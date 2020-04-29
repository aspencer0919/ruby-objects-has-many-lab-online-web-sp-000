class Artist
  attr_accessor :name, :song
  @list = []

  def initialize(name, song)
    @name = name
    @song = song
    @list << @song
  end
end
