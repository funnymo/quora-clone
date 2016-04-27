class User < ActiveRecord::Base

  attr_accessor :user
  
  validates :name, presence: true, uniqueness: true
  validates :email, format: { with: /\w+@\w+\.\w{2,3}/}
  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true, length:{in: 6..20}

  has_many :questions
  has_many :answers
  has_secure_password

end
