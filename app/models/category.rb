class Category < ApplicationRecord
  has_many :details
  has_many :products, through: :details
end
