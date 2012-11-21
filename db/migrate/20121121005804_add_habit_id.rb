class AddHabitId < ActiveRecord::Migration
  def up
  	add_column :actions, :habit_id, :integer
  end

  def down
  end
end
