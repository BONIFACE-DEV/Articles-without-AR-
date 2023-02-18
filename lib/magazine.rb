require_relative 'author'
require_relative 'article'

class Magazine
    attr_accessor :name, :category
  
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def self.find_by_name(name)
      @@all.find { |magazine| magazine.name == name }
    end
  
    def article_titles
      Article.all.select { |article| article.magazine == self }.map { |article| article.title }
    end
  
    def contributing_authors
      Article.all.select { |article| article.magazine == self }.group_by { |article| article.author }
                 .select { |author, articles| articles.size > 2 }.keys
    end
end
  

# Create a new Magazine instance
magazine1 = Magazine.new("Science News", "Science")

# Get the magazine's name and category
puts magazine1.name #=> "Science News"
puts magazine1.category #=> "Science"

# Get all Magazine instances
puts Magazine.all #=> [#<Magazine:0x00007faeed09e9b8 @name="Science News", @category="Science">]

# Get the magazine's contributors and articles
puts magazine1.contributors #=> []
puts magazine1.articles #=> []
