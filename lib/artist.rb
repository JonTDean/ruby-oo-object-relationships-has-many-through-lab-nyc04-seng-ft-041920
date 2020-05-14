class Artist 

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end


    def new_song(song_name, genre)
        if Song.artist == self
            song_name.artist
        else
            new_song = Song.new(song_name, genre, self)
        end
    end
    
    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def new_song(name, genre)
        new_song = Song.new(name, self, genre)
    end

    def genres
        songs.map do |song|
            song.genre
        end
    end
end