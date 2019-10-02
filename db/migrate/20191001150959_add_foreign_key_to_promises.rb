class AddForeignKeyToPromises < ActiveRecord::Migration[6.0]
  def change
    add_reference :promises, :users, foreign_key: true
  end
end
