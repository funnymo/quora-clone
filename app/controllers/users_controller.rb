#Signup
get "/signup" do
  erb :"user/signup"
end

post '/signup' do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    @errors = "unable to sign-up"
    erb :"user/signup"
  end
end


#Login
get '/login' do
  unless params[:errors].nil?
    @errors = params[:errors]
  end
  erb :"/user/login"
end
  
post '/login' do
    if user = User.find_by(email: params[:email])
        if user.authenticate(params[:password])
            session[:user_id] = user.id
          redirect "/users/#{user.id}"
        else
            @errors = "password-does-not-match"
            #redirect to login error
        end
    else
        errors = "email-does-not-exist"
      redirect "/users/login?errors=#{errors}"
    end
end

#View
get "/users/:id" do
  @user = User.find(params[:id])
  erb :"user/profile"
end


#Logout
delete '/logout' do
    session.clear
    redirect "/"
end