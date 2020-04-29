class Post
  attr_accessor :author, :name

  @@all = []

  def initialize(name, author = nil)
    @name = name
    @author = author
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if self.author
      self.author.name
    end
  end
end
