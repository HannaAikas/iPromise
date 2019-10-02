class AddMobileNumberToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :mobile, :integer
    add_index :users, :mobile
  end
end
