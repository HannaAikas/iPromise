class AddPunishmentToPromises < ActiveRecord::Migration[6.0]
  def change
    add_column :promises, :punishment, :text
  end
end
