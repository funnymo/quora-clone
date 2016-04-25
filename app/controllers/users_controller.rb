post '/signup' do
    user = User.new(params[:user])
    if user.save
        @user = user
        #erb to index
    else
        #erb to error page
        #or prompt error
    end
end

post '/login' do
    #apply an authentication method to check if a user has entered a valid email and password
    User.authenticate(user[email], user[password])
    
    # if a user has successfully been authenticated, you can assign the current user id to a session
end

post '/logout' do
    # kill a session when a user chooses to logout, for example assign nil to a session
    # redirect to the appropriate page
end