class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :text
      t.integer :score
      t.references :user, foreign_key: true
      t.references :Restaurant, foreign_key: true
      
      t.timestamps
    end
  end
end
