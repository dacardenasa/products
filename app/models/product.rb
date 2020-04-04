class Product < ApplicationRecord
  has_many :details
  has_many :categories, through: :details
end
