class User < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :phone, :presence => true, :numericality => { :only_integer => true } , :uniqueness => true
  validates :email, :presence => true, :uniqueness => true
  validates :customer_type, :presence => true
  
  self.per_page = 2
  
end
