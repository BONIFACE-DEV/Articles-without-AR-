class Article

    @@all = []

    attr_reader :magazine, :title
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def title
        @title
    end

    def self.all
        @@all
    end

    def author
        @author.name
    end

end