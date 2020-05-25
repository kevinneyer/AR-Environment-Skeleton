class Checkout <  ActiveRecord::Base
    belongs_to :user
    belongs_to :book

  def self.total_checkouts
  #returns total number of checkouts  
    self.all.count
  end

  def book_title
  #Returns book title associated with a checkout  
    self.book.title 
  end

end