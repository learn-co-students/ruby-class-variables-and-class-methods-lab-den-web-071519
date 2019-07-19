class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize (name, artist, genre)
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
        @@artists.uniq { |artist| artist }
    end

    def self.genres
        @@genres.uniq
    end

    def self.counter(info_array)
        hash = {}
        info_array.each do |type| 
            if hash[type] == nil
                hash[type] = 1
            else 
                hash[type] += 1
            end
        end 
        hash       
    end

    def self.genre_count
        counter(@@genres)
    end

    def self.artist_count
        counter(@@artists)
    end


end
