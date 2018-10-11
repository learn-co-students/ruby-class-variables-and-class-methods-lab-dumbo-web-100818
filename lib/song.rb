require 'pry'

class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
    @@artists.push(@artist)
    @@genres.push(@genre)
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    count = Hash.new 0
    @@genres.each do |type|
      count[type]+=1
    end
    count
  end

  def self.artist_count
    count = Hash.new 0
    @@artists.each do |artist|
      count[artist]+=1
    end
    count
  end

end
