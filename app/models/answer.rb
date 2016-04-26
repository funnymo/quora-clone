class Answer < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
    attr_accessors :answer_text, :user_id
end
