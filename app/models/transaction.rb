class Transaction < ActiveRecord::Base
  attr_accessible :amount_paid, :customer_name
end
