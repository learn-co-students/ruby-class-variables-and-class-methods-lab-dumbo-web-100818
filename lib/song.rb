require 'pry'

class Song
  @@count = 0
  @@artists = []
  @@genres =[]
  @@genres_hash = Hash.new(0)
  @@artist_hash = Hash.new(0)


  attr_accessor :name, :artist, :genre
  def initialize (name, artist, genre)
    @artist = artist
    @genre = genre
    @name = name
    @@count += 1
    @@artists << artist


    @@genres << genre

  end

  def self.genre_count
    @@genres.each do |genre|
      @@genres_hash[genre] += 1
    end
    @@genres_hash
  end

  def self.artist_count
    @@artists.each {|artist|
    @@artist_hash[artist] += 1}

    @@artist_hash
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.count
    @@count
  end

  def to_histogram
	    inject(Hash.new(0)) { |h, x| h[x] += 1; h}
	  end
# binding.pry
end
