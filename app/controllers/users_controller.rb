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
    session[:user_id] = user.id
end

post '/logout' do
    # kill a session when a user chooses to logout, for example assign nil to a session
    # redirect to the appropriate page
end



class UsersController
    def index
        @users = User.all
    end

    def new
        @user = User.new
    end
    
    def create
        @user = User.new(params[:user])
        if @user.save
            session[:user_id] = @user.id
            flash[:success] = "Welcome!"
            #redirect to root
        else
            render 'new'
        end
    end
    
    def login
        @user = User.find_by_email(params[:user][:email])
        if @user && @user.authenticate(params[:user][:password])
            flash[:success] = "Welcome back!"
            session[:user_id] = @user.id
            #redirect to home
        else
            flash[:error] = "Something wrong"
            #redirect to signup
        end
    end
    
    def logout
        session.clear
        #redirect to root
    end
end
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        