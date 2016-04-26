class AnswersController
    def index
        @answer = Answer.all
    end
    
    def create
        @answer = Answer.new(params[:answer])
        if @answer.save
            
        else
            
        end
    end
    
    
end
