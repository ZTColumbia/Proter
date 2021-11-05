class AddCntToProduct < ActiveRecord::Migration
  def change
    add_column :products, :buy_count, :integer, :default => 0
  end
end
