class CreateUsers < ActiveRecord::Migration
	def change
        create_table :users do |x|
            x.string :name
            x.string :email
            x.string :encrypted_password
            x.string :description
            x.timestamps null: false
        end
	end
end