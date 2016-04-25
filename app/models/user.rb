class User < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
    attr_accessor :password
    validates :email, presence :true, uniqueness :true
    validates :encrypted_password, presence :true, length:{in: 6..20}
    
    before_create :password
    
    def password
        @password ||= Password.new(password_hash)
    end
    
    def password=(new_password)
        @password = Password.create(new_password)
        self.password_hash = @password
    end
    
    def self.aunthenticate(email,password)
        
    end
end
