class CreateFridges < ActiveRecord::Migration[5.1]
  def change
    create_table :fridges do |t|
      t.string :location
      t.string :brand
      t.integer :size
      t.string :food
      t.string :drinks

      t.timestamps
    end
  end
end
