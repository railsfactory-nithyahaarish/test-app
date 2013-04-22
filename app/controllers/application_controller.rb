class ApplicationController < ActionController::Base
 skip_before_filter :authorize, :only => :new
 skip_before_filter :authorize, :only => :create
 protect_from_forgery
 

 def authorize
  unless User.find_by_id(session[:user_id])
  redirect_to login_url, :notice => "login before continue"
  end
 end

private

def current_cart
 Cart.find(session[:cart_id])
 rescue ActiveRecord::RecordNotFound
 cart = Cart.create
 session[:cart_id] = cart.id
 cart
end

end


