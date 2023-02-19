Mrequire_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



#creating  a new author
author1 = Author.new("Boniface Korir")
author2 = Author.new("Millicent J")
author3 = Author.new("james Korir")
author4 = Author.new("viola J")


#Creating new magazines
magazine1 = Magazine.new("The NAIROBIAN", "Lifestyle and Fashion")
magazine2 = Magazine.new("Science News", "Business and Finance")
magazine3 = Magazine.new("National Geographic Traveler", "Travel and Food")
magazine4 = Magazine.new("Entertainment Weekly", "Arts and Entertainment")




#creating new articles instances
article1 = Article.new(author1,magazine1,"The Vogue")
article2 = Article.new(author2,magazine2,"The Forbes")
article3 = Article.new(author3,magazine3,"The National Geographic Traveler")
article4 = Article.new(author4,magazine4,"The Entertainment Weekly")


#adding new article
author1.add_article(magazine1,"The Vogue")
author2.add_article(magazine3,"The Entertainment Weekly")
author4.add_article(magazine4,"The National Geographic Traveler")
author3.add_article(magazine2,"The Forbes")



binding.pry

0