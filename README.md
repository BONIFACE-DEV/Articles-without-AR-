## Articles - without AR
This code challenge requires building out classes and methods to create an application that can handle creating, retrieving, and managing instances of Authors, Magazines, and Articles.

## initializers, Readers, and Writers
Author

    Author#initialize(name): An author is initialized with a name as a string. A name cannot be changed after it is initialized.
    Author#name: Returns the name of the author.

Magazine

    Magazine#initialize(name, category): A magazine is initialized with a name as a string and a category as a string. The name and category of the magazine can be changed after being initialized.
    Magazine#name: Returns the name of this magazine.
    Magazine#category: Returns the category of this magazine.
    Magazine.all: Returns an array of all Magazine instances.

Article

    Article#initialize(author, magazine, title): An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string. An article cannot change its author, magazine, or title after it has been initialized.
    Article#title: Returns the title for that given article.
    Article.all: Returns an array of all Article instances.

## Object Relationship Methods
Article

    Article#author: Returns the author for that given article.
    Article#magazine: Returns the magazine for that given article.

Author

    Author#articles: Returns an array of Article instances the author has written.
    Author#magazines: Returns a unique array of Magazine instances for which the author has contributed to.

Magazine

    Magazine#contributors: Returns an array of Author instances who have written for this magazine.

## Associations and Aggregate Methods
Author

    Author#add_article(magazine, title): Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
    Author#topic_areas: Returns a unique array of strings with the categories of the magazines the author has contributed to.

Magazine

    Magazine.find_by_name(name): Given a string of a magazine's name, this method returns the first magazine object that matches.
    Magazine#article_titles: Returns an array of strings of the titles of all articles written for that magazine.
    Magazine#contributing_authors: Returns an array of authors who have written more than 2 articles for the magazine.

# Conclusion

In conclusion, thi project requires you to build out a set of classes and their respective methods, including initializers, readers, writers, object relationship methods, and associations and aggregate methods. Make sure to test your code in the console as you write it, and prioritize writing methods that work over writing more methods that do not work.

## Running the Application

To run the application, create instances of the classes and call their respective methods as needed. Ensure that the methods are working correctly by testing them in the console. If needed, create helper methods to assist with functionality.

Please note that this code challenge does not have tests provided. Ensure that your code works as expected before submitting.

## AUTHOR

[Boniface korir] https://github.com/BONIFACE-DEV


## License info

Copyright (c) 2022 korir boniface Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.