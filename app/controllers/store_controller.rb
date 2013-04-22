class StoreController < ApplicationController
  before_filter :authorize
  def index
    @products = Product.all
  end
end
