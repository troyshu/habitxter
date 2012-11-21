class Action < ActiveRecord::Base
  attr_accessible :notes
  belongs_to :habit
end
