class Artist
  attr_reader :name
  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
      Song.all.select{|song| song.artist == self}
  end

  def self.all
    @@all
  end

  def genres
    songs.map {|song| song.genre.}.uniq!
  end
end
