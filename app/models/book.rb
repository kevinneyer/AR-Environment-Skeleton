class Book <  ActiveRecord::Base
    belongs_to :category
    belongs_to :author
    has_many :checkouts
    has_many :users, through: :checkouts

    def self.total_books
    #returns number of total books    
      self.all.count
    end

    def self.book_titles
    #returns all book titles    
      self.all.map do |book|
        book.title 
      end
    end

    def self.find_by_title(title)
     #find book by title passed in as an argument   
      self.all.find_by(title: title)
    end

    def checkouts
    #shows all checkouts associated with a book   
      self.checkouts
    end

    def author
    #returns author of book    
      self.author
    end
    
    def category
    #returns category of book
      self.category
    end    

end