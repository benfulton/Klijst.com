class CreateLijsts < ActiveRecord::Migration
  def change
    create_table :lijsts do |t|
      t.string :name

      t.timestamps
    end
  end
end
