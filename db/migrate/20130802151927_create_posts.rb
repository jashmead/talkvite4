class AddColumnsToLocations < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :talk_id
      t.integer :user_id
      t.string :post_type
      t.text :content

      t.timestamps
    end
  end
end
