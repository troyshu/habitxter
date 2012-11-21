class SetIndicesForActions < ActiveRecord::Migration
  def up
  	add_index :actions, [:habit_id, :created_at]
  end

  def down
  end
end
