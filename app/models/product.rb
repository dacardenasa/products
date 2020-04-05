class Product < ApplicationRecord
  has_many :details, :dependent => :destroy
  has_many :categories, through: :details
end
