class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)
  end

  def self.count
    return @@count
  end

  def self.genres
    return @@genres.uniq()
  end

  def self.artists
    return @@artists.uniq()
  end

  def self.genre_count
    histogram = Hash.new(0)
    @@genres.each {|genre| histogram[genre] += 1}
    return histogram
  end

  def self.artist_count
    histogram = Hash.new(0)
    @@artists.each {|artist| histogram[artist] += 1}
    return histogram
  end

end
