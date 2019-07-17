class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << @artist
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

    def self.counts(array)
        hash = {}
        array.each do |type|
            if hash[type] == nil
                hash[type] = 1
            else
                hash[type] += 1
            end
        end
        hash
    end


    def self.genre_count
        counts(@@genres)
    end

    def self.artist_count
        counts(@@artists)
    end
end
