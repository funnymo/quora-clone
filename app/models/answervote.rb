class Answervote < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
end
