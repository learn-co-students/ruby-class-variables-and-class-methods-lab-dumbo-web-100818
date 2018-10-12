class Song
	@@count = 0
	@@genres = []
	@@artists = []
	@@genre_count = {}
	@@artist_count = {}
	attr_accessor :name, :artist, :genre
	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@genres << genre
		@@count += 1
		@@artists << artist
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
		@@genres.each do |genre|
			@@genre_count[genre] = @@genres.count(genre)
		end
		@@genre_count
	end
	def self.artist_count
		@@artists.each do |artist|
			@@artist_count[artist] = @@artists.count(artist)
		end
		@@artist_count
	end

end