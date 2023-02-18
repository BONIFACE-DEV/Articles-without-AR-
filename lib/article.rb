require_relative 'author'
require_relative 'magazine'

class Article
    attr_reader :title, :author, :magazine
    @@all = []
  
    def initialize(author, magazine, title)
      @author = author
      @magazine = magazine
      @title = title
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def self.find_by_title(title)
      @@all.find { |article| article.title == title }
    end
end
  
require_relative 'article'
require_relative 'author'
require_relative 'magazine'

# Create some Author and Magazine instances
author1 = Author.new("J.K. Rowling")
author2 = Author.new("Stephen King")
magazine1 = Magazine.new("Science News", "Science")

# Create some Article instances
article1 = Article.new(author1, magazine1, "The Science of Magic")
article2 = Article.new(author2, magazine1, "The Science of Horror")

# Get the articles' title, author, and magazine
puts article1.title #=> "The Science of Magic"
puts article1.author #=> #<Author:0x00007faeed1da0e8 @name="J.K. Rowling">
puts article1.magazine #=> #<Magazine:0x00007faeed09e9b8 @name="Science News", @category="Science">

# Get all Article instances
puts Article.all #=> [#<Article:0x00007faeed1da9e8 @author=#<Author:0x00007faeed1da0e8 @name="J.K. Rowling">, @magazine=#<Magazine:0x00007faeed09e9b8 @name="Science News", @category="Science">, @title="The Science of Magic">, #<Article:0x00007faeed1da7d0 @author=#<Author:0x00007faeed1...
 
# Find an article by title
puts Article.find_by_title("The Science of Magic") #=> #<Article:0x00007faeed1da9e8 @author=#<Author:0x00007faeed1da0e8 @name="J.K. Rowling">, @magazine=#<Magazine:0x00007faeed09e9b8 @name="Science News", @category="Science">, @title="The Science of Magic">

  