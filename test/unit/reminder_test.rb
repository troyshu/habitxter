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

require 'test_helper'

class ReminderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
