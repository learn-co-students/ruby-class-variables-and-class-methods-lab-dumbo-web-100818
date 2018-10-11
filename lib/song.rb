require "pry"
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = Hash.new
  @@artist_count = Hash.new

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
    add_to_genre_count(genre)
    add_to_artist_count(artist)
  end

  def add_to_genre_count(genre)
      @@genre_count[genre] ||= 0
      @@genre_count[genre] += 1
  end

  def add_to_artist_count(genre)
      @@artist_count[genre] ||= 0
      @@artist_count[genre] += 1
  end

  def self.artist_count
    @@artist_count
  end

  def self.genre_count
    @@genre_count
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

end
