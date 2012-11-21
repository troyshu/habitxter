class SetIndexForHabits < ActiveRecord::Migration
  def up
  	add_index :habits, [:user_id, :created_at]
  end

  def down
  end
end
