class CreateHome < ActiveRecord::Migration
  def change
    create_table :homes, id: false do |t|
      t.primary_key :hogar_id
      t.integer :vivienda_id
      t.integer :nhog
      t.integer :h05
      t.integer :h06
      t.integer :h07
      t.integer :h08
      t.integer :h09
      t.integer :h10
      t.integer :h11
      t.integer :h12
      t.integer :h13
      t.integer :h14
      t.integer :h15
      t.integer :h16
      t.integer :h19a
      t.integer :h19b
      t.integer :h19c
      t.integer :h19d
      t.integer :prop
      t.integer :indhac
      t.integer :totpers
      t.integer :algunbi

      t.timestamps null: false
    end
  end
end
