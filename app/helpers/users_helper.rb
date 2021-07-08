module UsersHelper

  def logged_in?
    !session[:id].nil?
  end

  def current_user
    logged_in? ? User.find(session[:id]) : false
  end

end
