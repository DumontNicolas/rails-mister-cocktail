class CreateDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :doses do |t|
      t.integer :ingredient_id
      t.integer :cocktail_id
      t.string :description

      t.timestamps
    end
  end
end
