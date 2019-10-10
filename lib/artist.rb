class Artist
attr_accessor :name, :songs
@@all = []


    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def add_song(song)
      
        song.artist = self
        @songs << song
        
    end

    def songs
        Song.all.select {
            |song| song.artist == self
        }
    end

    def add_song_by_name(name)
        song = Song.new(name)
        add_song(song)
    end

    def self.all
        @@all
    end

    def self.song_count
        all_songs = self.all.map {
            |artist| artist.songs
        }
        return all_songs.flatten.length
    end


end