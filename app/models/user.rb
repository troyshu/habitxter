class User < ActiveRecord::Base
  acts_as_authentic
  attr_accessible :password, :password_confirmation, :email, :username
  
end
