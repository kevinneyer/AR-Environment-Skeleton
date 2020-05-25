class Author < ActiveRecord::Base
    has_many :books
    has_many :checkouts, through: :books
    has_many :categories, through: :books

  def self.total_authors
  #returns number of all authors  
    self.all.count
  end

  def self.author_names
  #returns an array of all author names
    self.all.map do |instance|
      instance.name
    end  
  end 

  def checkouts
  #shows all book checkouts associated with author  
    self.checkouts
  end

  def my_books
  #returns books associated with that author  
    self.books 
  end

  def book_count
  #shows number of books associated with that author
    my_books.count
  end

  def categories
  #shows categories associate with that author   
    self.categories
  end

  def book_titles
  #returns an array of author's book titles
    my_books.map do |book|
      book[:title]
    end
  end

end