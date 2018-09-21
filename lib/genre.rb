class Genre
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

end
