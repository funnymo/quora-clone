#Show all answers
#get "/answers" do
#    @answers = Answer.all
#    erb :"answer/index" #needed?
#end

#Create answer
post "/answers" do
  @answer = current_user.answers.new(params[:answer])
  if @answer.save
    redirect "/questions/#{@answer.question_id}"
  else
    @error = "Can't add new answer"
    redirect "/questions/#{@answer.question_id}?errors=#{@error}"
  end
end