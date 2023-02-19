Mrequire_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


a1 = Author.new("Author1")
mag = Magazine.new("mag1","news")
mag2 = Magazine.new("mag2","news")
mag3 = Magazine.new("mag3","sports")
art = Article.new(a1,mag,"Title1")
a2 = Author.new("Author2")
art2 = Article.new(a2,mag,"Title2")
a1.add_article(mag,"Title3")
a1.add_article(mag,"Title4")
a1.add_article(mag,"Title5")
a1.add_article(mag2,"Title6")
a1.add_article(mag2,"Title7")
a1.add_article(mag3,"Title8")


binding.pry

0