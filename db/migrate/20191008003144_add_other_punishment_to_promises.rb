class AddOtherPunishmentToPromises < ActiveRecord::Migration[6.0]
  def change
    add_column :promises, :other_punishment, :text
  end
end