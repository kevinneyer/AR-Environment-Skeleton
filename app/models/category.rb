class Category < ActiveRecord::Base
    has_many :books
    has_many :checkouts, through: :books
end