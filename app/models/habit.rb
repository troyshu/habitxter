# == Schema Information
#
# Table name: habits
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  description   :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#  reminder_time :time
#  enabled       :boolean
#

class Habit < ActiveRecord::Base
  attr_accessible :description, :name, :enabled
  validates :name, presence: true
  belongs_to :user
  has_many :actions
end
