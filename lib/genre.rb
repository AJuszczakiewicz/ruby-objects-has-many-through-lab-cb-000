class Genre
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Songs.all.select{|song| song.genre == self}
  end

  def artist
    songs.map{|song| song.artist}
  end
end
