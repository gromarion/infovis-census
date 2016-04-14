class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people, id: false do |t|
      t.primary_key :person_id
      t.integer :home_id
      t.integer :p01
      t.integer :p02
      t.integer :p03
      t.integer :p04
      t.integer :p05
      t.integer :p06
      t.integer :p07
      t.integer :p12
      t.integer :edadgru
      t.integer :edadqui
      t.integer :p08
      t.integer :p09
      t.integer :p10
      t.integer :condact

      t.timestamps null: false
    end
  end
end
