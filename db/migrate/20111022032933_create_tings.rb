class CreateTings < ActiveRecord::Migration
  def change
    create_table :tings do |t|
      t.string :name
      t.text :description
      t.references :lijst

      t.timestamps
    end
    add_index :tings, :lijst_id
  end
end
