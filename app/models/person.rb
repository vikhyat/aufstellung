class Person < ActiveRecord::Base
  attr_accessible :name
  
  validate :name, unique: true, presence: true
end
