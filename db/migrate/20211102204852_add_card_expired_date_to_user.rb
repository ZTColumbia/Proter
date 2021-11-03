class AddCardExpiredDateToUser < ActiveRecord::Migration
  def change
    add_column :users, :card_expired_date, :string
  end
end
