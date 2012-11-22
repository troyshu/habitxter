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

require 'test_helper'

class ActionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
