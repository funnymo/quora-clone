include WillPaginate::Sinatra::Helpers

get '/' do
    @top_stories = Question.order(id: :desc).paginate(page: params[:page], per_page: 5)
    erb :"static/index"
end
