class AddImageDataToProducts < ActiveRecord::Migration
  def change
    add_column :products, :image_data, :text
  end
end
