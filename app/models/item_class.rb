class ItemClass < ActiveRecord::Base
  attr_accessible :price, :title
  
  validate :title, unique: true, presence: true
  
  has_many :items
end
