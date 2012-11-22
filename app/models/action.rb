# == Schema Information
#
# Table name: actions
#
#  id         :integer          not null, primary key
#  notes      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  habit_id   :integer
#

class Action < ActiveRecord::Base
  attr_accessible :notes
  belongs_to :habit
end
