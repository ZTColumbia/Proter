class AddPeopleToShoppinggroups < ActiveRecord::Migration
  def change
    add_column :shopping_groups, :people, :string
  end
end
