class User <  ActiveRecord::Base
    has_many :checkouts
    has_many :books, through: :checkouts
    has_many :categories, through: :books
end