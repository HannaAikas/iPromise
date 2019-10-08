class AddOtherToPromises < ActiveRecord::Migration[6.0]
  def change
    add_column :promises, :other_text, :text
  end
end
