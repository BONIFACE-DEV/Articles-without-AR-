require_relative '../config/environment'


# Creating Author instances
author1 = Author.new("Boniface Korir")
author2 = Author.new("Millicent Jerono")
author3 = Author.new("Brian G")
author4 = Author.new("Drake John")


#creating Magazine instances
magazine1 = Magazine.new("The NAIROBIAN", "Lifestyle and Fashion")
magazine2 = Magazine.new("Science News", "Business and Finance")
magazine3 = Magazine.new("National Geographic Traveler", "Travel and Food")
magazine4 = Magazine.new("Entertainment Weekly", "Arts and Entertainment")

# Creating  Article instances
article1 = Article.new(author1, magazine1, "The Vogue")
article2 = Article.new(author2, magazine2, "The Forbes")
article3 = Article.new(author3, magazine3, "The National Geographic Traveler")
article4 = Article.new(author4, magazine4, "The Entertainment Weekly")
       
        #testing some methods

#  all Article instances
puts Article.all 

# getting  articles titles
puts article1.title 
puts article2.title 
puts article3.title 
puts article4.title 

#getting article authors
puts article1.author 
puts article2.author 
puts article3.author 
puts article4.author 

#getting article magazines
puts article1.magazine
puts article2.magazine
puts article3.magazine
puts article4.magazine

# Test out some methods
puts author1.name 
puts author1.articles.count 
puts author1.magazines.count 
puts author1.topic_areas 

puts magazine1.name 
puts magazine1.category 
puts magazine1.contributors.count 
puts magazine1.article_titles 
puts magazine1.contributing_authors.count




# Creating a new Author object
author5 = Author.new("finley mahig")

# Creating a new Magazine object
magazine5 = Magazine.new("Tech illusion", "tech")

# Creating a new Article object
article5 = Article.new(author5, magazine5, "football hurts")


# Accessing the magazine of an article
magazine = article1.magazine
puts magazine.name


# Accessing all Article objects
articles = Article.all
puts articles



# Accessing all Author objects who have written for a particular magazine
magazine_contributors = magazine1.contributors
puts magazine_contributors



# Adding a new article for an author and magazine
author3.add_article(magazine2, "The  Beauty of kenya")

# Accessing all Article objects written by a particular author
author_articles = author1.articles
puts author_articles


# Accessing all unique Magazine objects that an author has contributed to
author_magazines = author1.magazines
puts author_magazines





                               ## the  outputs in the terminal for above  methods
#<Article:0x00005606616a2300>
#<Article:0x00005606616a20d0>
#<Article:0x00005606616a1fe0>
#<Article:0x00005606616a1f18>
The Vogue
The Forbes
The National Geographic Traveler
The Entertainment Weekly
#<Author:0x00005606616a2cb0>
#<Author:0x00005606616a2af8>
#<Author:0x00005606616a2a58>
#<Author:0x00005606616a2968>
#<Magazine:0x00005606616a2850>
#<Magazine:0x00005606616a26c0>
#<Magazine:0x00005606616a2580>
#<Magazine:0x00005606616a2468>
Boniface Korir
1
1
Lifestyle and Fashion
The NAIROBIAN
Lifestyle and Fashion
1
The Vogue
0
The NAIROBIAN
#<Article:0x00005606616a2300>
#<Article:0x00005606616a20d0>
#<Article:0x00005606616a1fe0>
#<Article:0x00005606616a1f18>
#<Article:0x000056066169b7a8>
#<Author:0x00005606616a2cb0>
#<Article:0x00005606616a2300>
#<Magazine:0x00005606616a2850>