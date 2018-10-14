require 'pry'

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
  @@genres << genre
  @@artists << artist
  # if !@@genres.include?(genre)
  #   @@genres << genre
  # end
  # if !@@artists.include?(artist)
  #   @@artists << artist
  # end
end

# def create_genre_list
#   if !@@genres.include? (@genre)
#     @@genres << @genre
#   end
#
# def create_artist_list
#   if !@@artists.include? (@artist)
#     @@artists << @artist
#   end
# end

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
  genre_hash = {}
  @@genres.each do |each_genre|
    if genre_hash[each_genre] == nil
      genre_hash[each_genre] = 1
    else
      genre_hash[each_genre] += 1
    end
  end
  genre_hash
end

def self.artist_count
  artist_hash = {}
  @@artists.each do |each_artist|
    if artist_hash[each_artist] == nil
      artist_hash[each_artist] = 1
    else
      artist_hash[each_artist] += 1
    end
  end
  artist_hash
end
# binding.pry
end
