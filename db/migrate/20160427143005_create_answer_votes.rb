class CreateAnswerVotes < ActiveRecord::Migration
  def change
    create_table :answervotes do |x|
      x.integer :upvote
      x.integer :downvote
      
      x.belongs_to :answer
      x.belongs_to :user
    end
  end
end
