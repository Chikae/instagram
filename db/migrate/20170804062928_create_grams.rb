class CreateGrams < ActiveRecord::Migration
  def change
    create_table :grams do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
