class Category < ActiveRecord::Base
    has_many :books
    has_many :checkouts, through: :books

  def self.category_list
  #returns array of all category names  
    self.all.map do |instance|
      instance.name
    end
  end

  def checkouts
  #shows checkouts by associated category
    self.checkout
  end  

end