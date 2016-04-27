class CreateAnswers < ActiveRecord::Migration
	def change
        create_table :answers do |x|
            x.string :answer_text
            x.timestamps null: false
            x.belongs_to :user
            x.belongs_to :question
        end
	end
end
