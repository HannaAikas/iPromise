class AddLastReminderTimeToPromises < ActiveRecord::Migration[6.0]
  def change
    add_column :promises, :last_reminder_time, :timestamp
  end
end
