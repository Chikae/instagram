class AddUserIdToGrams < ActiveRecord::Migration
  def change
    add_column :grams, :user_id, :integer
  end
end
