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

require 'test_helper'

class HabitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
