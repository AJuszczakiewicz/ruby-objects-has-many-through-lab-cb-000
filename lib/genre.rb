class Genre
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Songs.all.select{|song| song.genre == self}.uniq!
  end

  def artist
    songs.map{|song| song.artist}.uniq!
  end
end
