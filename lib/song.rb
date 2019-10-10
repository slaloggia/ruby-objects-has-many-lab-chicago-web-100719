
class Song
attr_reader :name, :artist
@@all = []
    def initialize(title)
        @name = title
        @artist 
        @@all << self
    end

    def self.all
        @@all
    end
    
    def artist
        @artist
    end

    def artist=(name = nil)
        @artist = name
    end
      
    def artist_name
       if self.artist
         self.artist.name
       end
    end

end

