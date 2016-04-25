class User < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
    attr_accessor :email, :password
    
    
    validates :email, format: { with: /\w+@\w+\.\w{2,3}/}
    validates :email, uniqueness: true
#    validates :encrypted_password, presence :true, length:{in: 6..20}
    
    
    #has_secure_password
    before_create :password

end
