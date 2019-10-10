class Author
    attr_accessor :name, :posts
    @@all = []
    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end

    def author
        self.name
    end

    def self.all
        @@all
    end

    def add_post(post)
        post.author = self
        @posts << post 
    end

    def add_post_by_title(title)
        post = Post.new(title)
        add_post(post)
    end

    def posts
        Post.all.select {
            |post| post.author == self
        }
    end

    def self.post_count
        all_posts = self.all.map {
            |author| author.posts
        }
        return all_posts.flatten.length
    end

end