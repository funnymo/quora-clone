def current_user
  @current_user ||= User.find(session[:user_id])
end

def logged_in?
  !current_user.nil?
end

def authorization?(user)
  user == session[:user_id]
end