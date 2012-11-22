# == Schema Information
#
# Table name: reminders
#
#  id            :integer          not null, primary key
#  reminder_time :time
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#

class Reminder < ActiveRecord::Base
  attr_accessible :reminder_time
  belongs_to :user
end
