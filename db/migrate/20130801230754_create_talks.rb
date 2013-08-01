class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
