class AddCardCvvToUser < ActiveRecord::Migration
  def change
    add_column :users, :card_cvv, :string
  end
end
