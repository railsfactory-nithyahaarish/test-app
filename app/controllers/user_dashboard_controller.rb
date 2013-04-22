class UserDashboardController < ApplicationController
 

def index
  p session[:user_id]
  @user=User.find_by_id(session[:user_id])
  #@user.name
  
end



end
