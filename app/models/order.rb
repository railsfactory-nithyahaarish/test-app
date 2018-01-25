class Order < ActiveRecord::Base
  attr_accessible :address, :email, :name, :pay_type
  validate_presence_of :email, :name
  end
