class AddMobileNumberToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :mobileNumber, :integer
    add_index :users, :mobileNumber
  end
end
