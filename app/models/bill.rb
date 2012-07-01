class Bill < ActiveRecord::Base
  attr_accessible :amount_paid, :customer_name
  
  has_many :items
  
  def amount_owed
    items.inject(0) {|r, i| r + i.price }
  end
end
