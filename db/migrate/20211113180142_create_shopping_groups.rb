class CreateShoppingGroups < ActiveRecord::Migration
  def change
    create_table :shopping_groups do |t|
      t.string :city
      t.integer :cur_people
      t.integer :total_people

      t.timestamps null: false
    end
  end
end
