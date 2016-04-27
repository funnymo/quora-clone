#Create new Question
get "/questions" do
    @user = current_user
    question = current_user.questions.new(params[:question])
    if question.save
        #redirect to questions #{question.id}
    else
        @errors = "unable to create question"
        flash[:error] = "Something went wrong!"
        #redirect to error?
    end
end

#Show all questions
get "/questions" do
    @questions = Question.all
    erb :"question/index"
end

#View particular question
get "/questions/:id" do
    @answers = Answer.all
    @question = Question.find(params[:id])
    #redirect to view
end


#Edit?

#Delete question
delete "/questions/:id" do
    question = Question.find(params[:id])
    if current_user.id == question.user_id
        question.destroy
        #redirect to current user profile
    else
        error = "unable to delete"
        flash[:error] = "Something went wrong!"
    end
end