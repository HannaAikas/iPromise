class CreatePromises < ActiveRecord::Migration[6.0]
  def change
    create_table :promises do |t|
      t.text :text

      t.timestamps
    end
  end
end


# associations - user ID for when a user makes a post

