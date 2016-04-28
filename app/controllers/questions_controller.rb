#Create new Question
get "/questions/new" do
  erb :"question/new"
end

post "/questions" do
  @user = current_user
  question = current_user.questions.new(params[:question])
  if question.save
    redirect "/questions/#{question.id}"
  else
    @errors = "unable to create question"
    erb :"question/new"
  end
end

#Show all questions
get "/questions/" do
  @questions = Question.all
  erb :"question/index"
end

#View particular question
get "/questions/:id" do
  @answers = Answer.all
  @question = Question.find(params[:id])
  erb :"question/show"
end


#Edit?

#Delete question
delete "/questions/:id" do
  question = Question.find(params[:id])
  if current_user.id == question.user_id
    question.destroy
    redirect "/users/#{current_user.id}"
  else
      error = "unable to delete"
  end
end

#Question Upvote
post "/upvote/:id" do
  q = Questionvote.create(upvote: 1, question_id: params[:question_id])
  redirect "/questions/#{q.question_id}"
end

#Question Downvote
post "/downvote/:id" do
  q = Questionvote.create(downvote: 1, question_id: params[:question_id])
  redirect "/questions/#{q.question_id}"
end

#Answer Upvote
post "/answer/upvote/:id" do
  a = Answervote.create(upvote: 1, user_id: params[:user_id], question_id: params[:question_id])
  redirect "/questions/#{a.question_id}"
end

#Answer Downvote
post "/answer/downvote/:id" do
  a = Answervote.create(downvote: 1, answer_id: params[:answer_id], question_id: params[:question_id])
  redirect "/questions/#{a.question_id}"
end