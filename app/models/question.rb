class Question < ActiveRecord::Base
  
  attr_accessor :question
  
  validates :title, presence: true
  
  belongs_to :user
  
  has_many :answers
  
end
