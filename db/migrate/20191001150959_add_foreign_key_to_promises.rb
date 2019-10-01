class AddForeignKeyToPromises < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :promises, :users
  end
end
