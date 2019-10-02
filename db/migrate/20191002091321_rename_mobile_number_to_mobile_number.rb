class RenameMobileNumberToMobileNumber < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :mobileNumber, :mobile
  end
end
