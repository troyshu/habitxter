class Habit < ActiveRecord::Base
  attr_accessible :description, :name
  validates :name, presence: true
  belongs_to :user
  has_many :actions
end
