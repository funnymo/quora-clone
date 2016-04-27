class CreateQuestionVotes < ActiveRecord::Migration
  def change
    create_table :questionvotes do |x|
      x.integer :upvote
      x.integer :downvote
      x.belongs_to :question
      x.belongs_to :user
    end
  end
end
