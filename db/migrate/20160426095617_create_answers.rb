class CreateAnswers < ActiveRecord::Migration
	def change
        create_table :answers do |x|
            x.string :answer_text
            x.integer :user_id
            x.timestamps null: false
	end
end
