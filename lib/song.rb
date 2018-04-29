class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      num_appearances = @@genres.count(genre)
      hash[genre] = num_appearances
    end
    hash
  end

  def self.artist_count
    hash = {}
    @@artists.each do |artist|
      num_appearances = @@artists.count(artist)
      hash[artist] = num_appearances
    end
    hash
  end
end
