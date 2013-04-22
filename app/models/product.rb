class Product < ActiveRecord::Base
  attr_accessible :description, :price, :title
    has_many :line_items
  before_destroy :confirm
  
  def confirm
    if line_items.count.zero?
      return true
    else
    errors[:base] << "Line Items Present"
    return false
   end    
  end
  
  after_create :send_email
  def send_email
   NewProductCreated.new_product_created(self).deliver 
   p 1111111111111111111111111111
      end
  
  end
  
  
  
