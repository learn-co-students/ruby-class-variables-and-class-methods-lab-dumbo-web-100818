class Song

  @@artists = []
  @@genres = []
  @@count = 0

  attr_reader :name
  attr_accessor :artist, :genre, :count

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    genre_hash = Hash.new 0
      @@genres.each do |genre|
        genre_hash[genre]+=1
      end
    genre_hash
  end

  def self.artist_count
    artist_hash = Hash.new 0
      @@artists.each do |artist|
        artist_hash[artist]+=1
      end
    artist_hash
  end
end
