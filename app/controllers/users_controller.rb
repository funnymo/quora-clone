#Signup
post '/signup' do
    user = User.new(params[:user])
    if user.save
        session[:user_id] = user.id
        flash[:success] = "Welcome!"
        #redirect to users' page - #{user.id}
    else
        @errors = "unable to sign-up"
        flash[:error] = "Something went wrong!"
        #redirect to error?
    end
end


#Login
post '/login' do
    if user = User.find_by(email: params[:email])
        if user.authenticate(params[:password])
            flash[:success] = "Welcome back!"
            session[:user_id] = user.id
            #redirect to home
        else
            @errors = "password-does-not-match"
            flash[:error] = "Password does not match"
            #redirect to login error
        end
    else
        errors = "email-does-not-exist"
        flash[:error] = "Email does not exist"
        #redirect to login error
    end
end


#Logout
delete '/logout' do
    session.clear
    redirect "/"
end