class QuestionsController
    def index
        @question = Question.all
    end

    def new
        @question = Question.new
    end
    
    def create
        @question = Question.new(params[:question])
        if @question.save
            #redirect to root
        else
            
        end
    end
    
    def show
        #
    end
end