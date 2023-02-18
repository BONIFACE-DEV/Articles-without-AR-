require_relative 'article'

class Author
    attr_reader :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def add_article(magazine, title)
      Article.new(self, magazine, title)
    end
  
    def articles
        # select is the same as filter or find_all methods
      Article.all.select { |article| article.author == self } 
    end
  
    def magazines
      articles.map { |article| article.magazine }.uniq
    end
  
    def topic_areas
      magazines.map { |magazine| magazine.category }.uniq
    end
end
  
require_relative 'article'

# Create a new Author instance
author1 = Author.new("John Doe")

# Add an article to the author
article1 = Article.new(author1, magazine1, "New Discovery in Astrophysics")
author1.add_article(article1)

# Get the author's articles and magazines
puts author1.articles #=> [#<Article:0x00007faeed0a0e60 @author=#<Author:0x00007faeed0a0f58 @name="John Doe">, ...
puts author1.magazines #=> [#<Magazine:0x00007faeed09e9b8 @name="Science News", @category="Science">]

  