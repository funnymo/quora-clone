#Show all answers
#get "/answers" do
#    @answers = Answer.all
#    erb :"answer/index" #needed?
#end

#Create answer
post "/answers" do
    @answer = current_user.answers.new(params[:answer])
    if @answer.save
        flash[:success] = "Answer created!"
        #redirect to idk where
    else
        @error = "Can't add new answer"
        flash[:error] = "Oops. Something went wrong"
        #redirect to some error page
    end
end