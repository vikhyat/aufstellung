class Item < ActiveRecord::Base
  belongs_to :item_class
  belongs_to :person
  belongs_to :bill
  
  attr_accessible :person_id, :item_class_id, :bill_id
  
  def title
    item_class.title
  end
  
  def price
    item_class.price
  end
end
