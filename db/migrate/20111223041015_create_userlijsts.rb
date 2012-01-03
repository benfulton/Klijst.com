class CreateUserlijsts < ActiveRecord::Migration
  def change
    create_table :userlijsts do |t|
      t.references :lijst
      t.references :user

      t.timestamps
    end

    create_table :tings_userlijsts, :id => false do |t|
      t.references :ting, :userlijst
    end
  end
end
