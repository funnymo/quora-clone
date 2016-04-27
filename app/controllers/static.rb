get '/' do
    @top_stories = Question.order(id: :desc).paginate(page: params[:page], per_page: 15)
    erb :"static/index"
end
