class AddStatusToPromises < ActiveRecord::Migration[6.0]
  def change
    add_column :promises, :status, :boolean
  end
end
