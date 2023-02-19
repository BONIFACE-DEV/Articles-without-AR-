class Magazine

    @@all = []

    attr_accessor :name, :category
    def initialize(name="", category="")
        @name = name
        @category = category
        @@all << self
    end

    # def name=(new_name)
    #     @name = new_name
    # end

    # def category=(new_category)
    #     @category = new_category
    # end

    def self.all
        @@all
    end

    def mag_art
        Article.all.filter{|article| article.magazine.name == self.name}

    def mag_auth
        mag_art.map{|article| article.author}.uniq
    end

    def contributors
      mag_auth
    end

    def self.find_by_name(name)
        Magazine.all.find{|mag| mag.name == name}
    end
 

   
    def article_titles
        mag_art.map{|article| article.title}
    end
    

    def contributing_authors 
        major_authors = []
        mag_auth.tally.each do |key,value|
      value > 2 && (major_authors << key)
      major_authors
        end
    end
end