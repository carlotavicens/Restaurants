class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :title
      t.text :description
      t.references :user, foreign_key: true
      t.string :address
      t.integer :telephone

      t.timestamps
    end
  end
end
