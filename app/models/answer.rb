class Answer < ActiveRecord::Base
  
  attr_accessors :answer
  
  validates :answer_text, presence: true
  
  belongs_to :user
  belongs_to :question
  
  has_many :answervotes
end
