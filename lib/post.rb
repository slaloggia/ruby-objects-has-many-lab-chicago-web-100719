class Post
    attr_reader :title, :author
    @@all = []
    
    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author
        @author
    end

    def author=(author = nil)
        @author = author
    end

    def author_name
        if self.author
            self.author.name
        end 
    end

   

 

end