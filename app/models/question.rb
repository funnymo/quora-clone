class Question < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
    attr_accessor :title, :question_text, :user_id
    
    belongs_to :user
    
end
