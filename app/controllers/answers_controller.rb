#Create answer
post "/answers" do
  @answer = current_user.answers.new(question_id: params[:question_id], answer_text: params[:answer_text])
  if @answer.save
    redirect "/questions/#{@answer.question_id}"
  else
    @error = "Cant add new answer"
    redirect "/questions/#{@answer.question_id}?errors=#{@error}"
  end
end