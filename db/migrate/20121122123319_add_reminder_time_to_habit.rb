class AddReminderTimeToHabit < ActiveRecord::Migration
  def change
  	add_column :habits, :reminder_time, :time
  end
end
