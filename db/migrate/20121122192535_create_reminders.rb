class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.time :reminder_time

      t.timestamps
    end
  end
end
