class Question < ActiveRecord::Base
  
  attr_accessor :question
  
  validates :title
  
  belongs_to :user
  
  has_many :answers
  
end
