class AddEnableToHabits < ActiveRecord::Migration
  def change
  	add_column :habits, :enabled, :boolean
  	add_index :habits, [:enabled]
  end
end
