class CreateQuestions < ActiveRecord::Migration
	def change
        create_table :questions do |x|
            x.string :title
            x.string :question_text
            x.integer :user_id
            x.timestamps null: false
	end
end
