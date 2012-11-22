# == Schema Information
#
# Table name: users
#
#  id                :integer          not null, primary key
#  username          :string(255)
#  email             :string(255)
#  crypted_password  :string(255)
#  password_salt     :string(255)
#  persistence_token :string(255)
#  perishable_token  :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  phone_number      :integer
#

class User < ActiveRecord::Base
  acts_as_authentic
  validates_format_of :phone_number, :message => "must be a valid telephone number.", :with => /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/ 
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  attr_accessible :password, :password_confirmation, :email, :username, :phone_number
  has_many :habits
end
