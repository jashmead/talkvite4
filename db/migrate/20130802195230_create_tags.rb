class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag
      t.string :description
      t.integer :tagable_id
      t.string :tagable_type

      t.timestamps
    end
  end
end
