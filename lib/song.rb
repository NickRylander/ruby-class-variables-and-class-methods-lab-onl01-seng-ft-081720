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
        genre_count = {}
        @@genres.each {|genre| genre_count[genre] = (genre_count[genre] || 0) +1}
        genre_count
    end
    def self.artist_count
        artist_count = {}
        @@artists.each {|artist| artist_count[artist] = (artist_count[artist] || 0) + 1}
        artist_count
    end
end
