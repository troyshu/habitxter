class User < ActiveRecord::Base
  attr_accessible :crypted_password, :email, :password_salt, :perishable_token, :persistence_token, :username
  acts_as_authentic
end
