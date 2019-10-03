class AddColumnToPromise < ActiveRecord::Migration[6.0]
  def change
    add_column :promises, :end_datetime, :timestamp
    add_column :promises, :interval, :interval
  end
end
