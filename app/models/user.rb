class User < ActiveRecord::Base

  attr_accessor :user
  
  validates :name, presence: true, uniqueness: true
  validates :email, format: { with: /\w+@\w+\.\w{2,3}/}
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length:{in: 6..20}

  has_many :questions
  has_many :answers
  has_many :questionvotes
  has_many :answervotes
  has_secure_password
  

end
