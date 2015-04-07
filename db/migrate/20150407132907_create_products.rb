class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, :precision => 12, :scale => 3
      t.boolean :active
      t.string :title
      t.string :manufacturer
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end
