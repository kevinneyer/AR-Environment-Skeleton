class User <  ActiveRecord::Base
    has_many :checkouts
    has_many :books, through: :checkouts
    has_many :categories, through: :books

    def self.total_users
    #returns total number of users   
     self.all.count
    end

    def self.names
    #returns an array of all user names    
      self.all.map do |user|
        user.name
      end
    end

    def my_books
    #returns all checked out books associated with user    
      self.books
    end  
    
    def my_categories
    #returns all categories associated to user checked out books    
      self.categories
    end

end