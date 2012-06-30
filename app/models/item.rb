class Item < ActiveRecord::Base
  belongs_to :item_class
  belongs_to :person
  belongs_to :transaction
  
  attr_accessible :person_id, :item_class_id, :transaction_id
end
